Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqLJ-0005YZ-9l
 for barebox@lists.infradead.org; Wed, 15 May 2019 09:37:00 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hQqLC-0002ti-6i
 for barebox@lists.infradead.org; Wed, 15 May 2019 11:36:50 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC6)
 (envelope-from <afa@pengutronix.de>) id 1hQqL9-0001Lj-V1
 for barebox@lists.infradead.org; Wed, 15 May 2019 11:36:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2019 11:36:40 +0200
Message-Id: <20190515093644.9691-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/4] scripts/checkpatch.pl: rebase on top of upstream v5.1
To: barebox@lists.infradead.org

"v1" is at <20190219141647.2537-3-a.fatoum@pengutronix.de>

Changes since v1:
  - added dts/Bindings to compatible search patch (by Antony)
  - split barebox-specific changes into a separate commit (by Sascha)
  - split checkpatch.pl dependencies into a separate commit
  - changed spdxcheck.py to not require LICENSES/{exceptions, other}
  - removed exceptions/, other/ directories

Ahmad Fatoum (4):
  LICENSES: remove empty other, exceptions directories
  checkpatch: add upstream checkpatch v5.1 dependencies
  checkpatch: import as-is from Linux v5.1
  checkpatch: apply barebox-specific modifications

 LICENSES/exceptions/.gitignore   |    0
 LICENSES/other/.gitignore        |    0
 scripts/checkpatch.pl            | 4677 ++++++++++++++++++++++++++----
 scripts/cleanfile                |  178 ++
 scripts/cleanpatch               |  260 ++
 scripts/const_structs.checkpatch |    2 +
 scripts/get_maintainer.pl        |   11 +
 scripts/spdxcheck.py             |  292 ++
 scripts/spelling.txt             | 1413 +++++++++
 9 files changed, 6253 insertions(+), 580 deletions(-)
 delete mode 100644 LICENSES/exceptions/.gitignore
 delete mode 100644 LICENSES/other/.gitignore
 create mode 100755 scripts/cleanfile
 create mode 100755 scripts/cleanpatch
 create mode 100644 scripts/const_structs.checkpatch
 create mode 100755 scripts/get_maintainer.pl
 create mode 100755 scripts/spdxcheck.py
 create mode 100644 scripts/spelling.txt

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
