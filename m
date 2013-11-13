Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgWyx-00039Q-Hk
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 09:43:32 +0000
Received: from mail624.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D5013FF9CB8
 for <barebox@lists.infradead.org>; Wed, 13 Nov 2013 10:45:06 +0100 (CET)
Date: Wed, 13 Nov 2013 10:45:17 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131113094517.GB7965@ns203013.ovh.net>
References: <20131113020907.GA18280@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131113020907.GA18280@greatfirst.com>
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
Subject: Re: howto write to serial port
To: barebox <barebox@lists.infradead.org>

On 10:09 Wed 13 Nov     , zzs wrote:
> I register a uart, But it does't appeared in /dev.
> How can I open it and read/write it.
> 
> If I must use cdev->getc() and cdev->putc(). How to
> get the cdev pointer which point to my registered uart.

you can check the Animeo IP board for this

Best Regards,
J.
> 
> -- 
> Best Regards,
> zzs
> 
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
