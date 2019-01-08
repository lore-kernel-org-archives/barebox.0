Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-he1eur02on062f.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::62f]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggsU3-0007zV-HH
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 14:36:01 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Tue, 8 Jan 2019 14:35:49 +0000
Message-ID: <1546958133-6556-3-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.e3a33094-2d73-4d32-bde8-2dc1ddd31fbf@emailsignatures365.codetwo.com>
In-Reply-To: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
Content-Language: en-US
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/6] macb: fix check if hw is gem
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

Fix check for peripheral version in MACB_MID register to treat Xilinx
ZynqMP as GEM. All MIDs >=3D 2 indicate a GEM not only MID =3D=3D 2.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 drivers/net/macb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 240802e..c776535 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -86,7 +86,7 @@ static inline bool macb_is_gem(struct macb_device *macb)
 =

 static inline bool read_is_gem(struct macb_device *macb)
 {
-	return MACB_BFEXT(IDNUM, macb_readl(macb, MID)) =3D=3D 0x2;
+	return MACB_BFEXT(IDNUM, macb_readl(macb, MID)) >=3D 0x2;
 }
 =

 static int macb_send(struct eth_device *edev, void *packet,
-- =

2.7.4


Thomas H=E4mmerle
Research and Development =


Wolfvision GmbH
 | 6833 Klaus | Austria =

Tel: +43 5523 52250 | Mail: Thomas.Haemmerle@wolfvision.net =


Webpage: www.wolfvision.com | www.wolfvision.com/green
Firmenbuch / Commercial Register: FN283521v Feldkirch/Austria


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
