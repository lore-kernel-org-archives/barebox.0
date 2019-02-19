Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw6CY-0003oP-Qr
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 14:16:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw6CX-0008Dr-3I
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 15:16:49 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw6CW-00089Q-Qq
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 15:16:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 15:16:45 +0100
Message-Id: <20190219141647.2537-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 0/2] LICENSES: adopt Linux-like LICENSES directory structure
To: barebox@lists.infradead.org

Changes since v1:
- fixed grep pipeline in commit message
- removed u-boot jumptable exception as suggested by Sascha
- added follow-up commit with updated checkpatch.pl as suggested by Sam
- added empty exceptions/ and other/ directories

Ahmad Fatoum (2):
  LICENSES: adopt Linux-like LICENSES directory structure
  scripts/checkpatch.pl: rebase on top of upstream v5.0-rc6

 COPYING                          |  300 +-
 LICENSES/exceptions/.gitignore   |    0
 LICENSES/other/.gitignore        |    0
 LICENSES/preferred/BSD-3-Clause  |   36 +
 LICENSES/preferred/GPL-2.0       |  299 ++
 scripts/checkpatch.pl            | 4682 ++++++++++++++++++++++++++----
 scripts/cleanfile                |  178 ++
 scripts/cleanpatch               |  260 ++
 scripts/const_structs.checkpatch |    0
 scripts/get_maintainer.pl        |   11 +
 scripts/spdxcheck.py             |  286 ++
 scripts/spelling.txt             | 1344 +++++++++
 12 files changed, 6509 insertions(+), 887 deletions(-)
 create mode 100644 LICENSES/exceptions/.gitignore
 create mode 100644 LICENSES/other/.gitignore
 create mode 100644 LICENSES/preferred/BSD-3-Clause
 create mode 100644 LICENSES/preferred/GPL-2.0
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
