Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s250.sam-solutions.net ([217.21.49.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XroNE-0007NU-5C
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 13:35:45 +0000
Received: from s326.sam-solutions.net ([217.21.35.11])
 by s250.sam-solutions.net with esmtps (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <D.Lavnikevich@sam-solutions.com>)
 id 1XroMh-0008A7-Pn
 for barebox@lists.infradead.org; Fri, 21 Nov 2014 16:35:11 +0300
From: Dmitry Lavnikevich <d.lavnikevich@sam-solutions.com>
Date: Fri, 21 Nov 2014 16:35:05 +0300
Message-ID: <1416576907-2302-1-git-send-email-d.lavnikevich@sam-solutions.com>
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
Subject: Gate off ENFC clock before setting clock rate
To: barebox@lists.infradead.org

Since last revision hardcoded manipulations with clock registers was
replaced with clk_disable/clk_enable calls.

For this purpose 2-bit gate clocks support was implemented for imx platform
(like it is done in current mainline kernel code) and enfc_gate 2-bit gate
clock was added in clk-imx.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
