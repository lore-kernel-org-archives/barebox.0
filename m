Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggsU2-0007zQ-EP
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 14:35:59 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Tue, 8 Jan 2019 14:35:47 +0000
Message-ID: <1546958133-6556-2-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.2f59ab5f-ece6-4f67-bfed-5c6c80a92f11@emailsignatures365.codetwo.com>
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
Subject: [PATCH 2/6] macb: fix format specifiers for debug output
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

Fixes compiler warning "format '%d' expects argument of type 'int', but
argument 4 has type 'size_t {aka long unsigned int}' [-Wformat=3D]".

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 drivers/net/macb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 1a8f6da..240802e 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -596,7 +596,7 @@ static void macb_init_rx_buffer_size(struct macb_device=
 *bp, size_t size)
 						   DMA_ADDRESS_BROKEN);
 	}
 =

-	dev_dbg(bp->dev, "[%d] rx_buffer_size [%d]\n",
+	dev_dbg(bp->dev, "[%zu] rx_buffer_size [%d]\n",
 		   size, bp->rx_buffer_size);
 }
 =

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
