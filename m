Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VN000-0000o6-QY
 for barebox@lists.infradead.org; Fri, 20 Sep 2013 12:39:53 +0000
Date: Fri, 20 Sep 2013 14:39:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130920123930.GH30088@pengutronix.de>
References: <20130920044518.GB1137@ns203013.ovh.net>
 <1379652377-20276-1-git-send-email-plagnioj@jcrosoft.com>
 <20130920072313.GF30088@pengutronix.de>
 <20130920080127.GG1137@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130920080127.GG1137@ns203013.ovh.net>
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
Subject: Re: [PATCH 1/3] misc: add bootcount framework
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2013 at 10:01:27AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:23 Fri 20 Sep     , Sascha Hauer wrote:
> > 
> > This 'framework' in it's current state doesn't make much sense. It
> > doesn't even have support for reading the actual count back which I
> > would see as one of the minimum requirements for this.
> 
> I let the driver handle this
> 
> we can move this here if you want

If you want to make this a framework then make sure the users interact
with the framework and not with the drivers.

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
