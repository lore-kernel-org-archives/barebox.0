Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo6.mail-out.ovh.net ([46.105.56.136]
 helo=mo6.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYcy7-0004gX-9A
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 14:30:00 +0000
Received: from mail630.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo6.mail-out.ovh.net (Postfix) with SMTP id 02A88FFA7C0
 for <barebox@lists.infradead.org>; Tue, 22 Oct 2013 16:30:02 +0200 (CEST)
Date: Tue, 22 Oct 2013 16:31:23 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131022143123.GB26639@ns203013.ovh.net>
References: <20131019092406.GA32444@ns203013.ovh.net>
 <20131022133304.GL30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131022133304.GL30088@pengutronix.de>
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
Subject: Re: [PATCH 0/3] add ARM MMCI support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:33 Tue 22 Oct     , Sascha Hauer wrote:
> On Sat, Oct 19, 2013 at 11:24:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	to support the ARM AMBA MMCI support we need update the mci support
> > 	to only request data length that the controler can handle
> > 
> > The following changes since commit 8f23a17f9bac836e4a2f4883ca8f886f535449a8:
> > 
> >   Merge branch 'pu/bootloader-spec' (2013-10-14 15:46:10 +0200)
> 
> Applied, thanks

I found a bug if max_req_size is 0 we read 0 block

I send a v2

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686         Best   | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
