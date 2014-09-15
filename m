Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTOjw-0004fs-0U
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 05:22:16 +0000
Date: Mon, 15 Sep 2014 07:21:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140915052153.GX4992@pengutronix.de>
References: <1410516830-9403-1-git-send-email-s.hauer@pengutronix.de>
 <1410516830-9403-10-git-send-email-s.hauer@pengutronix.de>
 <20140912114804.GK2522@tarshish>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140912114804.GK2522@tarshish>
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
Subject: Re: [PATCH 09/10] resource: Let dev_request_mem_region return an
 error pointer
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

HI Baruch,

On Fri, Sep 12, 2014 at 02:48:04PM +0300, Baruch Siach wrote:
> Hi Sascha,
> 
> On Fri, Sep 12, 2014 at 12:13:49PM +0200, Sascha Hauer wrote:
> > For all users fix or add the error check.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> [snip]
> 
> >  zz                                    | 66 +++++++++++++++++++++++++++++++++++
> 
> Is this intended?
>

Erm, no. Removed this.

Thanks
Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
