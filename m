Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VMACG-0008IK-20
 for barebox@lists.infradead.org; Wed, 18 Sep 2013 05:21:04 +0000
Received: by mail-lb0-f171.google.com with SMTP id u14so6127395lbd.2
 for <barebox@lists.infradead.org>; Tue, 17 Sep 2013 22:20:40 -0700 (PDT)
From: Dmitry Smagin <dmitry.s.smagin@gmail.com>
Date: Wed, 18 Sep 2013 09:20:30 +0400
Message-Id: <1379481633-24534-1-git-send-email-dmitry.s.smagin@gmail.com>
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
Subject: [PATCH 0/3] Enable devicetree for Ritmix RZX-50 board
To: barebox@lists.infradead.org

  This series of patches enables devicetree using for mips-based
Ritmix RZX-50 board. Besides that it fixes missing dependency
and linking error when enabling OF_BAREBOX_DRIVER which actually
needs ENV_HANDLING to be activated.

[PATCH 1/3] Add missing dependency ENV_HANDLING for OF_BAREBOX_DRIVER
[PATCH 2/3] MIPS: rxz50: add initial devicetree support
[PATCH 3/3] MIPS: rzx50_defconfig: enable devicetree

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
