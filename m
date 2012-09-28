Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THV3N-0004ea-Mt
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 07:32:06 +0000
Date: Fri, 28 Sep 2012 09:32:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120928073203.GZ1322@pengutronix.de>
References: <1348613994-1793-1-git-send-email-vicencb@gmail.com>
 <1348613994-1793-5-git-send-email-vicencb@gmail.com>
 <20120926074516.GJ1322@pengutronix.de>
 <CAAMcf8CnnKG9WDk8PxsCjwcyVRTE11P1THeYtomAcfEawt0Jxg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8CnnKG9WDk8PxsCjwcyVRTE11P1THeYtomAcfEawt0Jxg@mail.gmail.com>
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
Subject: Re: [PATCH 4/7] Add USB booting capabilities to OMAP
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 28, 2012 at 02:27:54AM +0200, vj wrote:
> Hi Sascha,
>  I've been playing with passing some data from first to second stage using
> Jan's patches.
> It worked fine, but in my case I want to store this data on a global
> variable, which is cleared as it's in the BSS.
> There is a clean workarround to this issue?

The workaound would be to initialize the variable so it can't be in bss.
I'm still looking for a better way to do it.

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
