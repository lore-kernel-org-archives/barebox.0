Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9uoh-0005JX-Ok
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 09:25:37 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C64A3FF96CA
 for <barebox@lists.infradead.org>; Fri,  7 Sep 2012 11:33:13 +0200 (CEST)
Date: Fri, 7 Sep 2012 11:25:52 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120907092552.GP20330@game.jcrosoft.org>
References: <1347006700-9053-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347006700-9053-1-git-send-email-jlu@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: use correct format specifier
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:31 Fri 07 Sep     , Jan Luebbe wrote:
> For the size_t type the format specifier %zu or %zx must be used.
> See Documentation/printk-formats.txt in the kernel for details.
Acked-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

can you fix 

/opt/work/barebox/drivers/mtd/mtdraw.c: In function 'mtdraw_read':
/opt/work/barebox/drivers/mtd/mtdraw.c:140:3: warning: format '%lu' expects
type 'long unsigned int', but argument 2 has type 'ssize_t'

too

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
