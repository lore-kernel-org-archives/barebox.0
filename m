Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibhWP-0003OO-Vl
 for barebox@lists.infradead.org; Mon, 02 Dec 2019 08:57:35 +0000
Date: Mon, 2 Dec 2019 09:57:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191202085732.glnpepfo236vaxrk@pengutronix.de>
References: <20191127231946.27941-1-flokli@flokli.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127231946.27941-1-flokli@flokli.de>
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
Subject: Re: use /usr/bin/env bash shebang instead of /bin/bash
To: Florian Klink <flokli@flokli.de>
Cc: barebox@lists.infradead.org

Hi FLorian,

On Thu, Nov 28, 2019 at 12:19:43AM +0100, Florian Klink wrote:
> 
> Some distributions might not have bash in /bin, but in $PATH.
> 
> Using #!/usr/bin/env bash solves this, and is consistent with how the
> perl and python shebangs look like in the tree.

What is the exact case you are fixing with these patches? I am fine with
merging them generally, I just want to understand why and where you need
it.

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
