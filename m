Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ax9Tb-0006wZ-9G
 for barebox@lists.infradead.org; Mon, 02 May 2016 08:45:12 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7095AA00258
 for <barebox@lists.infradead.org>; Mon,  2 May 2016 10:44:55 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Mon, 2 May 2016 10:44:06 +0200
Message-Id: <1462178646-873-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2721651319145220330=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixup! PCI: imx6: Move PHY reset into
 imx6_pcie_establish_link()
To: barebox@lists.infradead.org

--===============2721651319145220330==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: quoted-printable

---
Hi Sascha,

small whitespace fixup for a commit in branch "for-next/pci".

Mit freundlichen Gr=C3=BC=C3=9Fen / Kind regards,
        Stefan Christ

---
 drivers/pci/pci-imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index e25a956..affc705 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -484,7 +484,7 @@ static int imx6=5Fpcie=5Festablish=5Flink(struct pcie=
=5Fport *pp)
=20
 	tmp =3D readl(pp->dbi=5Fbase + PCIE=5FRC=5FLCSR);
 	dev=5Fdbg(pp->dev, "Link up, Gen=3D%i\n", (tmp >> 16) & 0xf);
-=09
+
 	return 0;
=20
 err=5Freset=5Fphy:
--=20
1.9.1



--===============2721651319145220330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============2721651319145220330==--
