Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22d.google.com ([2a00:1450:400c:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X0TnT-0004Qy-4P
 for barebox@lists.infradead.org; Fri, 27 Jun 2014 10:54:24 +0000
Received: by mail-wi0-f173.google.com with SMTP id cc10so2602327wib.6
 for <barebox@lists.infradead.org>; Fri, 27 Jun 2014 03:54:00 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 27 Jun 2014 13:00:09 +0200
Message-Id: <1403866821-4029-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 00/12] documentation updates
To: barebox@lists.infradead.org

Here are misc documentation updates.

BTW, I didn't change "filesystem" -> "file system", because "man mount" on
linux uses both spellings.  Apparently one can use whatever one wants.

I also was so liberate to rename some headings so that they don't start with
"barebox" anymore.  A lower-case starting heading is (in my eyes!) just
ugly, and if it isn't allowed to capitalize barebox than one can still
change the headline :-) Just for the chapter "barebox" (getting,
configuration, compiling) I haven't found a better name yet.

Holger Schurig (12):
  doc: .gitignore generated files
  doc: make "System setup" an appendix
  doc: start (almost) all headlines with a capital
  doc: only include own download chapter
  doc: filesystemtype -> filesystem type
  doc: mention "make xconfig"
  doc: add colon after NOTE and HINT
  doc: add hint on how to calculate in hush
  doc: remove board type from barebox prompt examples
  doc: reformat overly long lines
  doc: move variables near device parameters
  doc: link back from variables to device parameters

 .gitignore                                         |    2 ++
 Documentation/boards/imx/Phytec-phyCORE-i.MX31.rst |    9 ++++--
 Documentation/boards/mxs/Chumby-Falconwing.rst     |   13 ++++++---
 Documentation/boards/mxs/Freescale-i.MX23-evk.rst  |    2 +-
 Documentation/boards/mxs/KaRo-TX28.rst             |    7 +++--
 Documentation/boards/omap.rst                      |    4 +--
 Documentation/boards/s3c/Digi-a9m2440.rst          |    2 +-
 Documentation/boards/tegra.rst                     |    4 +--
 Documentation/boards/x86.rst                       |   29 ++++++++++++++------
 Documentation/commands.rst                         |    4 +--
 Documentation/devicetree/index.rst                 |    2 +-
 Documentation/download.rst                         |   16 -----------
 Documentation/filesystems.rst                      |    2 +-
 Documentation/filesystems/ramfs.rst                |    6 ++--
 Documentation/index.rst                            |    1 -
 Documentation/user/barebox.rst                     |   10 ++++++-
 Documentation/user/booting-linux.rst               |    4 +--
 Documentation/user/driver-model.rst                |   14 ++++++----
 Documentation/user/hush.rst                        |   12 ++++++--
 Documentation/user/memory-areas.rst                |    2 +-
 Documentation/user/networking.rst                  |    6 ++--
 Documentation/user/pbl.rst                         |    2 +-
 Documentation/user/system-setup.rst                |    4 +--
 Documentation/user/ubi.rst                         |    2 +-
 Documentation/user/updating.rst                    |    2 +-
 Documentation/user/user-manual.rst                 |    8 +++---
 Documentation/user/variables.rst                   |   11 +++++---
 27 files changed, 105 insertions(+), 75 deletions(-)
 delete mode 100644 Documentation/download.rst

-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
