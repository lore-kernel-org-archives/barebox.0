Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolh4-0006jv-SQ
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:02:36 +0000
Date: Tue, 7 Jan 2020 11:02:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200107100231.g5wwq7ockn37e3ag@pengutronix.de>
References: <XnsAB3D61BD490A1fgotham@195.159.176.226>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <XnsAB3D61BD490A1fgotham@195.159.176.226>
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
Subject: Re: Why the internal kernel header?
To: Frederick Gotham <cauldwell.thomas@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 07, 2020 at 09:36:29AM -0000, Frederick Gotham wrote:
> 
> I'm using Barebox with Buildroot. Previously I was using Barebox version 
> 2018.12.0, and now I have upgraded to version 2019.12.0.
> 
> Barebox version 2019.12.0 won't compile for me with Buildroot, because the 
> header "<linux/list.h>" is missing.
> 
> The reason why this header file is missing is that "list.h" is an internal 
> kernel header file, rather than a userspace kernel header file.
> 
> I could try simply copying "list.h" into the appropriate directory in order 
> to get Barebox to compile, but I'm not keen on doing that.
> 
> Does Barebox really need that header file, and if so, why?

barebox needs that file, but it provides it itself. If it doesn't find
it during build then your setup seems odd. Could you provide the exact
error message?

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
