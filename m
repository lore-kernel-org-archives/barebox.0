Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XEu1c-0002ls-5r
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 05:44:36 +0000
Received: by mail-la0-f50.google.com with SMTP id gf5so1528703lab.9
 for <barebox@lists.infradead.org>; Tue, 05 Aug 2014 22:44:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  6 Aug 2014 09:44:03 +0400
Message-Id: <1407303846-15550-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] misc .gitignore-related fixes
To: barebox@lists.infradead.org

Antony Pavlov (3):
  openrisc: add barebox.lds to .gitignore
  scripts: add bareboximd{,-target} to .gitignore
  fixup! dtc: compile fdtget

 arch/openrisc/cpu/.gitignore | 1 +
 scripts/.gitignore           | 2 ++
 scripts/dtc/.gitignore       | 1 +
 3 files changed, 4 insertions(+)
 create mode 100644 arch/openrisc/cpu/.gitignore

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
