Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHJp3-0007oG-0K
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 20:37:06 +0000
Date: Wed, 4 Sep 2013 22:36:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130904203639.GN30088@pengutronix.de>
References: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
 <20130903084123.60bf8561ef15b863013431e7@gmail.com>
 <20130903112156.GL19197@ns203013.ovh.net>
 <20130904063013.GF30088@pengutronix.de>
 <20130904075919.GD22507@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130904075919.GD22507@ns203013.ovh.net>
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
Subject: Re: [PATCH] MIPS: qemu-malta: switch to devicetree
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 04, 2013 at 09:59:19AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> how about use the compatible property?
> 
> for me I'll just put
> model = "toto toto toto" , "toto_toot_toto";
> 
> if no second string create a hotname on the fly by replace the forbidden char
> by '_'

That would be fine aswell. We should probably suggest something on the
devicetree discuss list.

BTW according to EPAPR the model property should be "vendor,model". Most
ARM dts don't have this layout anyway. Maybe this increases the
motivation to change something there.

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
