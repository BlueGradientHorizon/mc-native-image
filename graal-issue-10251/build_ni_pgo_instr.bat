native-image --no-fallback --enable-url-protocols=http,https --initialize-at-build-time=net.minecraft.util.profiling.jfr.event,org.apache.logging.log4j,net.minecrell.terminalconsole.TCALookup -H:+UnlockExperimentalVMOptions -H:ConfigurationFileDirectories=./ -H:+AddAllCharsets -H:+IncludeAllLocales --pgo-instrument @args.txt
pause