Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo6.mail-out.ovh.net ([188.165.56.124])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj8KF-00052Z-Tw
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 17:46:10 +0000
Received: from player787.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id E668AB464C
 for <barebox@lists.infradead.org>; Wed,  1 Mar 2017 18:45:44 +0100 (CET)
Date: Wed, 1 Mar 2017 18:51:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170301175144.GB4120@mail.ovh.net>
References: <20170227100356.GA3007@tharch.hub>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170227100356.GA3007@tharch.hub>
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
Subject: Re: Zyxel NAS540 bricked?
To: AndrewCz <andrewcz@neomailbox.net>
Cc: barebox@lists.infradead.org

On 05:03 Mon 27 Feb     , AndrewCz wrote:
> Hello all, hope you are well.
> 
> Recently, I followed a guide[1] to reflash my Zyxel NAS540[2] in order
> to put Debian on it. I'm pretty sure I bricked it and am just looking
> for confirmation.
> 
> I seem to be running into a bootloop where it will restart every two
> minutes or so. At least that is what seems to be indicated based on the
> frequency of the front panel lights lighting up. I reflashed the 'env'
> and 'kernel2' sections of the NOR flash, but neither went the right way.
> I can dive into the specifics if necessary. However, my concern is that
> I was unable to receive any output from the serial connection.
> 
> Given that the barebox 'env' may be corrupt as well as the kernel, is it
> correct to expect that there would be no serial output? Thanks for your
> consideration in this matter.

And evenif we would like to help you zyxel did not provide to source code of
theur barebox they modified. Just the source code of the 2011.06 version.

So you will have to request them and if they refuse we could then force them
to release it as Copyright holder.

Best Regards,
J.
> 
> --Andrew Cz
> 
> [1] https://l.unchti.me/2016/02/12/debian-nas540.html
> [2] http://zyxel.nas-central.org/wiki/Category:NAS540
> 
> -- 
> Only an idiot fights a war on two fronts. Only the heir to the throne
> of the kingdom of idiots would fight a war on twelve fronts.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
