Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Txef7-0003uF-O3
 for barebox@lists.infradead.org; Tue, 22 Jan 2013 14:17:19 +0000
Received: from mail170.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 85167DC171F
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2013 15:26:57 +0100 (CET)
Date: Tue, 22 Jan 2013 15:15:23 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130122141523.GK26329@game.jcrosoft.org>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
 <1358798996-26595-7-git-send-email-plagnioj@jcrosoft.com>
 <20130122083012.GK1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130122083012.GK1906@pengutronix.de>
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
Subject: Re: [PATCH 7/9] at91sam9m10g45ek: add usb support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:30 Tue 22 Jan     , Sascha Hauer wrote:
> On Mon, Jan 21, 2013 at 09:09:54PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > warning: the ohci work only without MMU
> 
> This should give a compilation warning at minimum given that MMU is
> enabled in the defconfig
I was thinking to put a depend ont he driver

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
