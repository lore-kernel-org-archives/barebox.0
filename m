Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH3O8-00086O-74
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 08:59:10 +0000
Date: Mon, 29 Oct 2018 09:58:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029085853.lu3c3acsgrcu463n@pengutronix.de>
References: <20181027013230.24387-1-andrew.smirnov@gmail.com>
 <20181027013230.24387-6-andrew.smirnov@gmail.com>
 <20181027082039.GB28052@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181027082039.GB28052@ravnborg.org>
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
Subject: Re: [PATCH 5/6] drivers: base: Share code for
 dev_request_mem_region*()
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

On Sat, Oct 27, 2018 at 10:20:39AM +0200, Sam Ravnborg wrote:
> Hi Andrey
> 
> On Fri, Oct 26, 2018 at 06:32:29PM -0700, Andrey Smirnov wrote:
> > Both dev_request_mem_region() and dev_request_mem_region_err_null()
> > implement exactly the same functionality different only in error
> > reporting value. Change the code to make use of a common generic
> > function whose return type can be specified via an argument.
> > 
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> 
> Using functions that takes a boolean to do two different things
> is not an improvement.
> At least not when the functions are this small and obvious.

+1

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
