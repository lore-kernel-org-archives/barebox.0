Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knJ25-0005vs-0A
 for barebox@lists.infradead.org; Thu, 10 Dec 2020 10:18:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 8A9711A1D11
 for <barebox@lists.infradead.org>; Thu, 10 Dec 2020 10:18:43 +0000 (UTC)
Date: Thu, 10 Dec 2020 11:18:41 +0100
From: Jules Maselbas <jmaselbas@kalray.eu>
Message-ID: <20201210101841.hvjsmxfvykbg56oj@tellis.lin.mbt.kalray.eu>
References: <20201209145547.22655-1-jmaselbas@kalray.eu>
 <20201209145547.22655-2-jmaselbas@kalray.eu>
 <20201210100509.GV3977@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210100509.GV3977@pengutronix.de>
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
Subject: Re: [PATCH 2/4] usb: dwc2: Move static function prototypes into core.c
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 10, 2020 at 11:05:09AM +0100, Sascha Hauer wrote:
> Hi Jules,
> 
> On Wed, Dec 09, 2020 at 03:55:45PM +0100, Jules Maselbas wrote:
> 
> There should be a forward declaration necessary for static functions.
> You are changing the declarations to static here, but not the
> implementations further down in this file, so this shouldn't compile.
> 
Yes, I though there were already static, but it wasn't the case...
So I am going to remove theses declarations and add the static keyword
were is it missing.

> No need to move this declaration.
ok


> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
