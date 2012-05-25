Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXtjz-0006Fy-AF
 for barebox@lists.infradead.org; Fri, 25 May 2012 12:35:36 +0000
Date: Fri, 25 May 2012 14:35:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120525123531.GO30400@pengutronix.de>
References: <CAHvDM_cjKPKt205M3W+Cn8ns0+_GeYbj7xrtX6D+iiu9cJVt4g@mail.gmail.com>
 <20120525125154.1c039173@eb-e6520>
 <CAHvDM_dXQhSHi+gACuwnbs9i2=Sf93Bt8PBPMdKS0KvvNztmvA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHvDM_dXQhSHi+gACuwnbs9i2=Sf93Bt8PBPMdKS0KvvNztmvA@mail.gmail.com>
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
Subject: Re: Check if valid kernel and/or FS
To: Benoit RAT <benoit@sevensols.com>
Cc: barebox@lists.infradead.org

On Fri, May 25, 2012 at 12:58:48PM +0200, Benoit RAT wrote:
> Thanks,
> 
> I want to know, if i am using the default environment (the that I am using
> from compilation)
> barebox> no valid environment found on /dev/env0. Using default environment
> 
> Or I am using the one that there is in /dev/env0
> 
> It is in the case someone break something in the NAND flash env, I want to
> save again the default one.

Currently there is no way to detect that, but there is a little trick.
Put a this_is_compiled_in file into your default environment. Then
during startup you can do:

if [ -f /env/this_is_compiled_in ]; then
	echo "Sorry man, you lost your environment"
	rm /env/this_is_compiled_in
	saveenv
fi

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
