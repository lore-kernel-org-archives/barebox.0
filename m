Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YJdRp-0003Ey-Qn
 for barebox@lists.infradead.org; Fri, 06 Feb 2015 07:35:30 +0000
Date: Fri, 6 Feb 2015 08:35:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150206073506.GJ12209@pengutronix.de>
References: <CA+nEJin3xNxtwkhEzPgcfNvP2wiuGxqhdB8cLn71LWC1Y5k-FQ@mail.gmail.com>
 <20150203085931.GI12209@pengutronix.de>
 <54D09205.4070704@atmel.com>
 <CA+nEJi=x0PH1Hk0LpB+ELmi8bbjyz3s_KAGeYh-aPpi62Rm9VA@mail.gmail.com>
 <20150203193359.GO12209@pengutronix.de>
 <CA+nEJingM_3v2-d2OpOfARc-G6sVG_GFzjDh60xXQM4=2tgzSQ@mail.gmail.com>
 <CA+nEJinMJqBSaFBkAY26gb1SEueL+Fb_B7GCCM-tJLq+9NfQLA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+nEJinMJqBSaFBkAY26gb1SEueL+Fb_B7GCCM-tJLq+9NfQLA@mail.gmail.com>
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
Subject: Re: Passing kernel arguments - SAMA5D4EK
To: Doug Brainard <dbrainard@brainardinsight.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 05, 2015 at 03:19:08PM -0700, Doug Brainard wrote:
> Sascha,
> 
> Have you had a chance to look into what I need to do to convert to the
> new environment?

Just did that.

> 
> Also, would it be beneficial to add the ability to load more than one
> partition to the bootargs for the old environment setup?  I've almost
> finished the boot script modifications to allow for it while still
> being backwards compatible.  I can push it back up to the repository
> when finished if interested.

I'm definitely more interested in decreasing the number of users of the
old environment to 0. 

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
