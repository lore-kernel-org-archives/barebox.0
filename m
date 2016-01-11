Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aIkRR-0006Sh-Vc
 for barebox@lists.infradead.org; Mon, 11 Jan 2016 21:55:58 +0000
Received: by mail-lf0-x22b.google.com with SMTP id c192so222729473lfe.2
 for <barebox@lists.infradead.org>; Mon, 11 Jan 2016 13:55:37 -0800 (PST)
Date: Tue, 12 Jan 2016 00:55:32 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20160112005532.479fce9d@zacate>
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
Subject: [BUG] barebox won't boot from SD card on iMX233-OLinuXino-MAXI
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

At least nothing is printed to the Debug UART.

git-bisect points to the following patch:
4d70da6 ARM: MXS: power-init: Add parameters to mx28_power_init()

Reverting this patch fixes the issue.

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
