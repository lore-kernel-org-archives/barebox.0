Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr140059.outbound.protection.outlook.com
 ([40.107.14.59] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggsU3-0007zY-C5
 for barebox@lists.infradead.org; Tue, 08 Jan 2019 14:36:01 +0000
From: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>
Date: Tue, 8 Jan 2019 14:35:50 +0000
Message-ID: <1546958133-6556-4-git-send-email-thomas.haemmerle@wolfvision.net>
References: <1546958133-6556-1-git-send-email-thomas.haemmerle@wolfvision.net>
 <afd44571-b69b-41cc-bf15-9eff29f89a72.95bf7d06-047e-438c-8c7b-895af195351a.d7953183-96ef-4a79-9c25-4e47b7b852de@emailsignatures365.codetwo.com>
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
Subject: [PATCH 4/6] macb: fix memory leakage due to double allocation of
 rx_buffer
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: =?iso-8859-1?Q?Thomas_H=E4mmerle?= <Thomas.Haemmerle@wolfvision.net>

Remove memory allocation of rx buffer in function
macb_init_rx_buffer_size, which caused a memory leak since it also is
alocated in macb_probe().

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
---
 drivers/net/macb.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index c776535..c129282 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -592,8 +592,6 @@ static void macb_init_rx_buffer_size(struct macb_device=
 *bp, size_t size)
 			bp->rx_buffer_size =3D
 				roundup(bp->rx_buffer_size, RX_BUFFER_MULTIPLE);
 		}
-		bp->rx_buffer =3D dma_alloc_coherent(bp->rx_buffer_size * bp->rx_ring_si=
ze,
-						   DMA_ADDRESS_BROKEN);
 	}
 =

 	dev_dbg(bp->dev, "[%zu] rx_buffer_size [%d]\n",
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
