Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo4.mail-out.ovh.net ([178.33.104.253]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBjE7-0004gt-KI
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 11:04:09 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id EBA0BFF9B43
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 12:08:35 +0100 (CET)
Date: Fri, 7 Feb 2014 12:04:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20140207110458.GK9671@ns203013.ovh.net>
References: <20110126164348.GF1441@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110126164348.GF1441@game.jcrosoft.org>
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
Subject: Re: [RFC] Boot command line support
To: barebox@lists.infradead.org
Cc: Uwe Kleine-K??nig <u.kleine-koenig@pengutronix.de>

Hi,

	I was talking of this patch serie

Best Regards,
J.
On 17:43 Wed 26 Jan     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	as barebox is some times a second stage bootloader
> 	it could be intresting to pass some information
> 
> 	I'm currently working on two support
> 	the atags for arm and the cmdline
> 
> 	The cmline could be static or dynamic
> 	so it will be easy to customise a boot sequence and etc...
> 
> 	this first patch will just add static cmdline
> 
> 	later I'll send dynamic support and arm boot ABI
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
