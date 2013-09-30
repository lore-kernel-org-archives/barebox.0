Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQYbt-0003m7-3T
 for barebox@lists.infradead.org; Mon, 30 Sep 2013 08:13:41 +0000
Date: Mon, 30 Sep 2013 10:13:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130930081318.GY30088@pengutronix.de>
References: <5705070.dCeIF7ZgD5@yiqingliang-pc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5705070.dCeIF7ZgD5@yiqingliang-pc>
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
Subject: Re: strtoull_suffix
To: Yi Qingliang <niqingliang2003@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Sun, Sep 29, 2013 at 07:57:39PM +0800, Yi Qingliang wrote:
> the strtoull_suffix can't identify 'g' and 'm', but the 'memparse' in kernel 
> can, do we should follow the kernel?

Go ahead and send a patch. I remember the original reason I haven't
supported 'm' was that it reminded me too much on 'milli'. I still
haven't seen a millibyte though...

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
