Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YT6oA-0000LM-Az
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 10:45:43 +0000
Date: Wed, 4 Mar 2015 11:45:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150304104519.GA11010@pengutronix.de>
References: <1425455398-18858-1-git-send-email-s.hauer@pengutronix.de>
 <1425455398-18858-2-git-send-email-s.hauer@pengutronix.de>
 <166D2BA8-3932-4EE3-855B-B286BC53A5E6@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166D2BA8-3932-4EE3-855B-B286BC53A5E6@jcrosoft.com>
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
Subject: Re: [PATCH 2/2] remove unnecessary device pointer argument
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Mar 04, 2015 at 04:43:13PM +0800, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> > On Mar 4, 2015, at 3:49 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > 
> > The struct device_d * argument is not necessary, it can be retrieved from
> > the FILE *. This adds a convenience function for doing this and removes
> > the struct device_d * argument from the the filesystem drivers functions.
> 
> if you do so you should introduce fs_warn/info & co too
> 
> so we de not use dev_xxx version in fs

We can do that, but it's independent of these patches, right?

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
