Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBeq-00083S-BX
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 06:29:13 +0000
Received: from geraet.fritz.box (muedsl-82-207-205-165.citykom.de
 [82.207.205.165]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 136D41BF212
 for <barebox@lists.infradead.org>; Tue,  1 Oct 2019 06:29:00 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  1 Oct 2019 08:28:51 +0200
Message-Id: <20191001062853.1256-1-ahmad@a3f.at>
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
Subject: [PATCH 0/2] dtc: fix breakage of in-barebox libfdt
To: barebox@lists.infradead.org

I missed that I have to test CONFIG_BOARD_ARM_GENERIC_DT as well when
updating dtc. Please apply the first commit before the
("scripts/dtc: Update to upstream version v1.5.1") commit, so it's not
intermittently broken.

Also attached is a fixup to the documentation that makes note of this.

Ahmad Fatoum (2):
  lib: fdt: define INT32_MAX for in-barebox use
  fixup! Documentation: document barebox device tree handling

 Documentation/devicetree/index.rst | 17 ++++++++++-------
 include/linux/libfdt_env.h         |  2 ++
 2 files changed, 12 insertions(+), 7 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
