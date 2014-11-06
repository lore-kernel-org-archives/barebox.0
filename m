Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmMfS-00034e-M0
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:00:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XmMf6-0005Px-Fy
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:59:40 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XmMf6-0003a2-Eo
 for barebox@lists.infradead.org; Thu, 06 Nov 2014 13:59:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Nov 2014 13:59:27 +0100
Message-Id: <1415278778-20826-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: non volatile variables and incremental envrironment
To: barebox@lists.infradead.org

This series brings in two changes: non volatile variables and incremental
envrironment

Non volatile variables can be used to store informations over reboot,
they are basically a persistent variant of the globalvars. The non
volatile variables make it possible to change settings like for
example the autoboot timeout or bootsource without changing text
files. Also it makes it possible to change settings from program
code or scripts. Here is the documentation also contained in the
patches:

Non volatile variables
----------------------

Additionally to global variables barebox also has non volatile (nv) variables.
Unlike the global variables the config variables are persistent over reboots.

Each nv variable is linked with the global variable of the same name.
Whenever the nv variable changes its value the corresponding global
variable also changes its value. The other way round though is not true:
Changing a global variable does not change the corresponding nv variable.
This means that changing a global variable changes the behaviour for the
currently running barebox, while changing a nv variable changes the
behaviour persistently over reboots.

nv variables can be created or removed with the :ref:`command_nv`
command. The nv variables are made persistent using the environment
facilities of barebox, so a :ref:`saveenv` must be issued to store the actual
values.

examples:

.. code-block:: sh

  barebox@Phytec phyCARD-i.MX27:/ devinfo nv
  barebox@Phytec phyCARD-i.MX27:/ nv model=myboard
  barebox@myboard:/ devinfo nv
  Parameters:
    model: myboard
  barebox@myboard:/ devinfo global
  Parameters:
    [...]
    model: myboard
    [...]
  barebox@myboard:/ global.model=yourboard
  barebox@yourboard:/ devinfo nv
  Parameters:
    model: myboard
  barebox@yourboard:/


The second change in this series is that the environment code now
only stores the files which are changed from the default environment.
This means when an environment is unchanged, 'saveenv' will write
an empty environment. This has multiple effects:

- When scripts are unchanged (which should normally be the case in
  production environments) they will never be stored on any storage
  device. This means after a barebox update the (possibly updated)
  scripts from the newer default environment are used while the
  changes are still preserved.
- Together with non volatile variables it becomes possible to keep
  the program logic (scripts) in the default environment where they
  get updates while the configuration (non volatile variables) can
  still be saved. Still a developer can change scripts in the
  environment.
- The downside of this is that the saved scripts may not fit to
  the default scripts from an updated barebox. while previously
  a saved env may be incompatible with the currently running barebox
  it is now possible to create an environment which is inconsistent
  in itself.

Due to the last point it may be possible to convince me that the
incremental storage needs to be optional. However, it makes the
handling more complex, so I try without first ;)

Sascha

The following changes since commit 592d35a47ce4ef2ffffd9805a1a534771882f3a6:

  Merge branch 'for-next/xz' (2014-11-05 15:47:39 +0100)

are available in the git repository at:

  git://git.penguitronix.de/git/barebox.git

for you to fetch changes up to 7962e7a0b423a5dfba251622f64d3891f69a55c0:

  defaultenv-2: Make use of nonvolatile variables (2014-11-06 12:23:12 +0100)

----------------------------------------------------------------
Sascha Hauer (11):
      environment: drop unnecessary casts
      environment: remove unused variable
      environment: refactor saveenv
      environment: Only save changes to the defaultenv
      magicvar: Add support for dynamically added magicvars
      Add support for non volatile variables
      libfile: Add copy_recursive
      cp: Add recursive copy
      Add defaultenv command
      globalvar: Add support for printing all global variables
      defaultenv-2: Make use of nonvolatile variables

 Documentation/user/variables.rst                   |  41 ++++
 arch/arm/boards/archosg9/env/init/bootsource       |   4 +
 arch/arm/boards/at91sam9m10ihd/env/config          |  19 --
 .../boards/at91sam9m10ihd/env/init/config-board    |   8 -
 arch/arm/boards/at91sam9m10ihd/env/nv/boot.default |   1 +
 arch/arm/boards/at91sam9m10ihd/env/nv/hostname     |   1 +
 .../at91sam9m10ihd/env/nv/linux.bootargs.base      |   1 +
 .../boards/avnet-zedboard/env/init/config-board    |   6 -
 .../avnet-zedboard/env/init/nv/linux.bootargs.base |   1 +
 arch/arm/boards/beagle/env/config-board            |   6 -
 arch/arm/boards/beagle/env/nv/linux.bootargs.base  |   1 +
 arch/arm/boards/ccxmx51/env/config-board           |  10 -
 arch/arm/boards/ccxmx51/env/nv/autoboot_timeout    |   1 +
 arch/arm/boards/ccxmx51/env/nv/boot.default        |   1 +
 arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base |   1 +
 arch/arm/boards/clep7212/env/config-board          |  12 -
 arch/arm/boards/clep7212/env/init/bootsource       |   9 +
 arch/arm/boards/clep7212/env/nv/autoboot_timeout   |   1 +
 .../arm/boards/clep7212/env/nv/linux.bootargs.base |   1 +
 .../boards/crystalfontz-cfa10036/env/config-board  |   6 -
 .../boards/crystalfontz-cfa10036/env/init/general  |  12 -
 .../crystalfontz-cfa10036/env/nv/boot.default      |   1 +
 .../env/nv/linux.bootargs.base                     |   1 +
 arch/arm/boards/efika-mx-smartbook/env/config      |  29 ---
 .../boards/efika-mx-smartbook/env/init/bootsource  |   4 +
 .../efika-mx-smartbook/env/nv/autoboot_timeout     |   1 +
 .../efika-mx-smartbook/env/nv/linux.bootargs.base  |   1 +
 .../efika-mx-smartbook/env/nv/linux.bootargs.lpj   |   1 +
 .../efika-mx-smartbook/env/nv/linux.bootargs.quiet |   1 +
 .../boards/embedsky-e9/defaultenv-e9/config-board  |   7 -
 .../embedsky-e9/defaultenv-e9/init/bootsource      |   7 +
 .../boards/embedsky-e9/defaultenv-e9/nv/hostname   |   1 +
 arch/arm/boards/gk802/env/config-board             |   6 -
 arch/arm/boards/guf-vincell/env/init/config-board  |   7 -
 arch/arm/boards/guf-vincell/env/init/nv/hostname   |   1 +
 .../guf-vincell/env/init/nv/linux.bootargs.base    |   1 +
 arch/arm/boards/highbank/env/config-board          |  10 -
 arch/arm/boards/highbank/env/nv/boot.default       |   1 +
 arch/arm/boards/highbank/env/nv/bootargs.base      |   1 +
 arch/arm/boards/highbank/env/nv/bootm.oftree       |   1 +
 arch/arm/boards/mx31moboard/env/config-board       |   7 -
 arch/arm/boards/mx31moboard/env/nv/boot.default    |   1 +
 .../boards/mx31moboard/env/nv/linux.bootargs.base  |   1 +
 arch/arm/boards/panda/env/config-board             |   6 -
 arch/arm/boards/panda/env/nv/linux.bootargs.base   |   1 +
 .../defaultenv-phycard-imx6/config-board           |   9 -
 .../defaultenv-phycard-imx6/nv/boot.default        |   1 +
 .../defaultenv-phycard-imx6/nv/bootargs.base       |   1 +
 .../defaultenv-phycard-imx6/nv/hostname            |   1 +
 .../{config-board => init/bootsource}              |   8 +-
 .../defaultenv-phycore-am335x/init/init-usbserial  |   4 +
 .../defaultenv-phycore-am335x/nv/bootargs.base     |   1 +
 .../defaultenv-phycore-am335x/nv/hostname          |   1 +
 .../boards/phytec-phycore-imx31/env/config-board   |   6 -
 .../env/nv/linux.bootargs.base                     |   1 +
 .../boards/phytec-phycore-imx35/env/config-board   |   6 -
 .../env/nv/linux.bootargs.base                     |   1 +
 .../{config-board => init/bootsource}              |   8 +-
 .../defaultenv-phyflex-am335x/nv/hostname          |   1 +
 .../nv/linux.bootargs.base                         |   1 +
 .../defaultenv-phyflex-imx6/config-board           |   9 -
 .../defaultenv-phyflex-imx6/nv/boot.default        |   1 +
 .../defaultenv-phyflex-imx6/nv/hostname            |   1 +
 .../defaultenv-phyflex-imx6/nv/linux.bootargs.base |   1 +
 arch/arm/boards/radxa-rock/env/config-board        |   6 -
 .../boards/radxa-rock/env/nv/linux.bootargs.base   |   1 +
 arch/arm/boards/telit-evk-pro3/env/config-board    |   8 -
 arch/arm/boards/telit-evk-pro3/env/nv/boot.default |   1 +
 .../arm/boards/telit-evk-pro3/env/nv/bootargs.base |   1 +
 arch/arm/boards/telit-evk-pro3/env/nv/hostname     |   1 +
 commands/Kconfig                                   |  21 ++
 commands/Makefile                                  |   2 +
 commands/cp.c                                      |  36 +--
 commands/defaultenv.c                              |  95 ++++++++
 commands/global.c                                  |   5 +
 commands/loadenv.c                                 |  11 +-
 commands/magicvar.c                                | 111 ++++++++--
 commands/nv.c                                      |  84 +++++++
 common/Kconfig                                     |   1 +
 common/environment.c                               | 246 +++++++++++++++------
 common/globalvar.c                                 | 178 +++++++++++++++
 common/startup.c                                   |  13 +-
 defaultenv/defaultenv-2-base/bin/init              |   3 +
 defaultenv/defaultenv-2-base/config                |  22 +-
 defaultenv/defaultenv-2-base/nv/allow_color        |   1 +
 defaultenv/defaultenv-2-base/nv/autoboot_timeout   |   1 +
 defaultenv/defaultenv-2-base/nv/user               |   1 +
 include/globalvar.h                                |  13 ++
 include/libfile.h                                  |   2 +
 lib/libfile.c                                      |  40 ++++
 90 files changed, 875 insertions(+), 332 deletions(-)
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/config
 delete mode 100644 arch/arm/boards/at91sam9m10ihd/env/init/config-board
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/nv/boot.default
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/nv/hostname
 create mode 100644 arch/arm/boards/at91sam9m10ihd/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/avnet-zedboard/env/init/config-board
 create mode 100644 arch/arm/boards/avnet-zedboard/env/init/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/beagle/env/config-board
 create mode 100644 arch/arm/boards/beagle/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/ccxmx51/env/config-board
 create mode 100644 arch/arm/boards/ccxmx51/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/ccxmx51/env/nv/boot.default
 create mode 100644 arch/arm/boards/ccxmx51/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/clep7212/env/config-board
 create mode 100644 arch/arm/boards/clep7212/env/init/bootsource
 create mode 100644 arch/arm/boards/clep7212/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/clep7212/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/config-board
 delete mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/general
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/nv/boot.default
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/efika-mx-smartbook/env/config
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/autoboot_timeout
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.base
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.lpj
 create mode 100644 arch/arm/boards/efika-mx-smartbook/env/nv/linux.bootargs.quiet
 delete mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/config-board
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/init/bootsource
 create mode 100644 arch/arm/boards/embedsky-e9/defaultenv-e9/nv/hostname
 delete mode 100644 arch/arm/boards/gk802/env/config-board
 delete mode 100644 arch/arm/boards/guf-vincell/env/init/config-board
 create mode 100644 arch/arm/boards/guf-vincell/env/init/nv/hostname
 create mode 100644 arch/arm/boards/guf-vincell/env/init/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/highbank/env/config-board
 create mode 100644 arch/arm/boards/highbank/env/nv/boot.default
 create mode 100644 arch/arm/boards/highbank/env/nv/bootargs.base
 create mode 100644 arch/arm/boards/highbank/env/nv/bootm.oftree
 delete mode 100644 arch/arm/boards/mx31moboard/env/config-board
 create mode 100644 arch/arm/boards/mx31moboard/env/nv/boot.default
 create mode 100644 arch/arm/boards/mx31moboard/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/panda/env/config-board
 create mode 100644 arch/arm/boards/panda/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/config-board
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/boot.default
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/bootargs.base
 create mode 100644 arch/arm/boards/phytec-phycard-imx6/defaultenv-phycard-imx6/nv/hostname
 rename arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/{config-board => init/bootsource} (66%)
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/init/init-usbserial
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/bootargs.base
 create mode 100644 arch/arm/boards/phytec-phycore-am335x/defaultenv-phycore-am335x/nv/hostname
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/env/config-board
 create mode 100644 arch/arm/boards/phytec-phycore-imx31/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/env/config-board
 create mode 100644 arch/arm/boards/phytec-phycore-imx35/env/nv/linux.bootargs.base
 rename arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/{config-board => init/bootsource} (66%)
 create mode 100644 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/hostname
 create mode 100644 arch/arm/boards/phytec-phyflex-am335x/defaultenv-phyflex-am335x/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/config-board
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/boot.default
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/hostname
 create mode 100644 arch/arm/boards/phytec-phyflex-imx6/defaultenv-phyflex-imx6/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/radxa-rock/env/config-board
 create mode 100644 arch/arm/boards/radxa-rock/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/telit-evk-pro3/env/config-board
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/nv/boot.default
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/nv/bootargs.base
 create mode 100644 arch/arm/boards/telit-evk-pro3/env/nv/hostname
 create mode 100644 commands/defaultenv.c
 create mode 100644 commands/nv.c
 create mode 100644 defaultenv/defaultenv-2-base/nv/allow_color
 create mode 100644 defaultenv/defaultenv-2-base/nv/autoboot_timeout
 create mode 100644 defaultenv/defaultenv-2-base/nv/user

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
