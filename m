Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout01.posteo.de ([185.67.36.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJKvs-0005Qz-7J
 for barebox@lists.infradead.org; Sun, 04 Nov 2018 16:07:26 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout01.posteo.de (Postfix) with ESMTPS id 803CF20F05
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2018 17:07:06 +0100 (CET)
Received: from customer (localhost [127.0.0.1])
 by submission (posteo.de) with ESMTPSA id 42p10V0Y5Zz6tm8
 for <barebox@lists.infradead.org>; Sun,  4 Nov 2018 17:07:05 +0100 (CET)
Date: Sun, 4 Nov 2018 17:07:05 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
Message-ID: <20181104170705.0ad35065@yaise-pc1>
In-Reply-To: <20181102152751.2a0b995c@yaise-pc1>
References: <20181102152751.2a0b995c@yaise-pc1>
MIME-Version: 1.0
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
Subject: Re: Barebox stops working if /env/boot/mmc is removed
To: Barebox List <barebox@lists.infradead.org>

On Fri, 2 Nov 2018 15:27:51 +0100
Patrick Boettcher <patrick.boettcher@posteo.de> wrote:

> Hi list,
> 
> I'm using barebox 2017.04.0-BSP (phytec's fork though).
> 
> I'm customizing my environment in a (Yocto) .bbappend-file.
> 
> When I'm removing (or not adding) the /env/boot/mmc-file the
> barebox-image created by Yocto is not booting at all, that is, on the
> serial console I don't see anything.
> 
> Maybe this is a problem of phytec's fork, but I'm wondering what could
> create this behavior in general? Missing env-files make barebox not
> boot.

The issue seems to have come from a file which was maybe in a previous
default environment and has been modified in the user-environment and
was now remove in the default-env or overwritten or whatnot.

It seems that I fixed it by erasing
the /dev/barebox-environment-partition after flashing the new
barebox-version.

For the moment this is not an issue for my system/application. It's a
bit scary though. 

regards,
--
Patrick.



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
