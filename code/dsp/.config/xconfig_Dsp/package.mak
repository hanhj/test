#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#

unexport MAKEFILE_LIST
MK_NOGENDEPS := $(filter clean,$(MAKECMDGOALS))
override PKGDIR = xconfig_Dsp
XDCINCS = -I. -I$(strip $(subst ;, -I,$(subst $(space),\$(space),$(XPKGPATH))))
XDCCFGDIR = package/cfg/

#
# The following dependencies ensure package.mak is rebuilt
# in the event that some included BOM script changes.
#
ifneq (clean,$(MAKECMDGOALS))
C:/ti/xdctools_3_23_01_43/include/utils.tci:
package.mak: C:/ti/xdctools_3_23_01_43/include/utils.tci
C:/ti/xdctools_3_23_01_43/packages/xdc/xdc.tci:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/xdc.tci
C:/ti/xdctools_3_23_01_43/packages/xdc/template.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/template.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/om2.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/om2.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/xmlgen.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/xmlgen.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/xmlgen2.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/xmlgen2.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/IPackage.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/IPackage.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/package.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/package.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/services/global/Clock.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/services/global/Clock.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/services/global/Trace.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/services/global/Trace.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/bld.js:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/bld.js
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/BuildEnvironment.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/BuildEnvironment.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/PackageContents.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/PackageContents.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/_gen.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/_gen.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Library.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Library.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Executable.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Executable.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Repository.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Repository.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Configuration.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Configuration.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Script.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Script.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Manifest.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Manifest.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Utils.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/Utils.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/ITarget.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/ITarget.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/ITarget2.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/ITarget2.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/ITargetFilter.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/ITargetFilter.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/bld/package.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/bld/package.xs
package.mak: config.bld
C:/ti/xdctools_3_23_01_43/packages/ti/targets/ITarget.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/ITarget.xs
C:/ti/xdctools_3_23_01_43/packages/ti/targets/C28_large.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/C28_large.xs
C:/ti/xdctools_3_23_01_43/packages/ti/targets/C28_float.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/C28_float.xs
C:/ti/xdctools_3_23_01_43/packages/ti/targets/package.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/package.xs
C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/ITarget.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/ITarget.xs
C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/TMS470.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/TMS470.xs
C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/package.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/package.xs
package.mak: package.bld
C:/ti/xdctools_3_23_01_43/packages/xdc/tools/configuro/template/compiler.opt.xdt:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/tools/configuro/template/compiler.opt.xdt
C:/ti/xdctools_3_23_01_43/packages/xdc/services/io/File.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/services/io/File.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/services/io/package.xs:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/services/io/package.xs
C:/ti/xdctools_3_23_01_43/packages/xdc/tools/configuro/template/custom.mak.exe.xdt:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/tools/configuro/template/custom.mak.exe.xdt
C:/ti/xdctools_3_23_01_43/packages/xdc/tools/configuro/template/package.xs.xdt:
package.mak: C:/ti/xdctools_3_23_01_43/packages/xdc/tools/configuro/template/package.xs.xdt
endif

ti.targets.elf.C674.rootDir ?= C:/ti/ccsv5/tools/compiler/c6000_7.4.1
ti.targets.elf.packageBase ?= C:/ti/xdctools_3_23_01_43/packages/ti/targets/elf/
.PRECIOUS: $(XDCCFGDIR)/%.oe674
.PHONY: all,e674 .dlls,e674 .executables,e674 test,e674
all,e674: .executables,e674
.executables,e674: .libraries,e674
.executables,e674: .dlls,e674
.dlls,e674: .libraries,e674
.libraries,e674: .interfaces
	@$(RM) $@
	@$(TOUCH) "$@"

.help::
	@$(ECHO) xdc test,e674
	@$(ECHO) xdc .executables,e674
	@$(ECHO) xdc .libraries,e674
	@$(ECHO) xdc .dlls,e674


all: .executables 
.executables: .libraries .dlls
.libraries: .interfaces

PKGCFGS := $(wildcard package.xs) package/build.cfg
.interfaces: package/package.xdc.inc package/package.defs.h package.xdc $(PKGCFGS)

-include package/package.xdc.dep
package/%.xdc.inc package/%_xconfig_Dsp.c package/%.defs.h: %.xdc $(PKGCFGS)
	@$(MSG) generating interfaces for package xconfig_Dsp" (because $@ is older than $(firstword $?))" ...
	$(XSRUN) -f xdc/services/intern/cmd/build.xs $(MK_IDLOPTS) -m package/package.xdc.dep -i package/package.xdc.inc package.xdc

.dlls,e674 .dlls: Dsp.pe674

-include package/cfg/Dsp_pe674.mak
-include package/cfg/Dsp_pe674.cfg.mak
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/Dsp_pe674.dep
endif
Dsp.pe674: package/cfg/Dsp_pe674.xdl
	@


ifeq (,$(wildcard .libraries,e674))
Dsp.pe674 package/cfg/Dsp_pe674.c: .libraries,e674
endif

package/cfg/Dsp_pe674.c package/cfg/Dsp_pe674.h package/cfg/Dsp_pe674.xdl: override _PROG_NAME := Dsp.xe674
package/cfg/Dsp_pe674.c: package/cfg/Dsp_pe674.cfg

clean:: clean,e674
	-$(RM) package/cfg/Dsp_pe674.cfg
	-$(RM) package/cfg/Dsp_pe674.dep
	-$(RM) package/cfg/Dsp_pe674.c
	-$(RM) package/cfg/Dsp_pe674.xdc.inc

clean,e674::
	-$(RM) Dsp.pe674
.executables,e674 .executables: Dsp.xe674

Dsp.xe674: |Dsp.pe674

-include package/cfg/Dsp.xe674.mak
Dsp.xe674: package/cfg/Dsp_pe674.oe674 
	$(RM) $@
	@$(MSG) lnke674 $@ ...
	$(RM) $(XDCCFGDIR)/$@.map
	$(ti.targets.elf.C674.rootDir)/bin/lnk6x -w -q -u _c_int00 -fs $(XDCCFGDIR)$(dir $@).  -q -o $@ package/cfg/Dsp_pe674.oe674   package/cfg/Dsp_pe674.xdl --abi=eabi -c -m $(XDCCFGDIR)/$@.map -l $(ti.targets.elf.C674.rootDir)/lib/rts6740_elf.lib
	
Dsp.xe674: export C_DIR=
Dsp.xe674: PATH:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)
Dsp.xe674: Path:=$(ti.targets.elf.C674.rootDir)/bin/;$(PATH)

Dsp.test test,e674 test: Dsp.xe674.test

Dsp.xe674.test:: Dsp.xe674
ifeq (,$(_TESTLEVEL))
	@$(MAKE) -R -r --no-print-directory -f $(XDCROOT)/packages/xdc/bld/xdc.mak _TESTLEVEL=1 Dsp.xe674.test
else
	@$(MSG) running $<  ...
	$(call EXEC.Dsp.xe674, ) 
endif

clean,e674::
	-$(RM) .tmp,Dsp.xe674,0,*


clean:: clean,e674

clean,e674::
	-$(RM) Dsp.xe674
clean:: 
	-$(RM) package/cfg/Dsp_pe674.pjt
%,copy:
	@$(if $<,,$(MSG) don\'t know how to build $*; exit 1)
	@$(MSG) cp $< $@
	$(RM) $@
	$(CP) $< $@
Dsp_pe674.oe674,copy : package/cfg/Dsp_pe674.oe674
Dsp_pe674.se674,copy : package/cfg/Dsp_pe674.se674

$(XDCCFGDIR)%.c $(XDCCFGDIR)%.h $(XDCCFGDIR)%.xdl: $(XDCCFGDIR)%.cfg .interfaces $(XDCROOT)/packages/xdc/cfg/Main.xs
	@$(MSG) "configuring $(_PROG_NAME) from $< ..."
	$(CONFIG) $(_PROG_XSOPTS) xdc.cfg $(_PROG_NAME) $(XDCCFGDIR)$*.cfg $(XDCCFGDIR)$*

.PHONY: release,xconfig_Dsp
xconfig_Dsp.tar: package/package.bld.xml
xconfig_Dsp.tar: package/package.ext.xml
xconfig_Dsp.tar: package/package.rel.dot
xconfig_Dsp.tar: package/build.cfg
xconfig_Dsp.tar: package/package.xdc.inc
ifeq (,$(MK_NOGENDEPS))
-include package/rel/xconfig_Dsp.tar.dep
endif
package/rel/xconfig_Dsp/xconfig_Dsp/package/package.rel.xml:

xconfig_Dsp.tar: package/rel/xconfig_Dsp.xdc.inc package/rel/xconfig_Dsp/xconfig_Dsp/package/package.rel.xml
	@$(MSG) making release file $@ "(because of $(firstword $?))" ...
	-$(RM) $@
	$(call MKRELTAR,package/rel/xconfig_Dsp.xdc.inc,package/rel/xconfig_Dsp.tar.dep)


release release,xconfig_Dsp: all xconfig_Dsp.tar
clean:: .clean
	-$(RM) xconfig_Dsp.tar
	-$(RM) package/rel/xconfig_Dsp.xdc.inc
	-$(RM) package/rel/xconfig_Dsp.tar.dep

clean:: .clean
	-$(RM) .libraries .libraries,*
clean:: 
	-$(RM) .dlls .dlls,*
#
# The following clean rule removes user specified
# generated files or directories.
#

ifneq (clean,$(MAKECMDGOALS))
ifeq (,$(wildcard package))
    $(shell $(MKDIR) package)
endif
ifeq (,$(wildcard package/cfg))
    $(shell $(MKDIR) package/cfg)
endif
ifeq (,$(wildcard package/lib))
    $(shell $(MKDIR) package/lib)
endif
ifeq (,$(wildcard package/rel))
    $(shell $(MKDIR) package/rel)
endif
ifeq (,$(wildcard package/internal))
    $(shell $(MKDIR) package/internal)
endif
ifeq (,$(wildcard package/external))
    $(shell $(MKDIR) package/external)
endif
endif
clean::
	-$(RMDIR) package

include custom.mak
clean:: 
	-$(RM) package/xconfig_Dsp.pjt
