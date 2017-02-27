Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from s2.neomailbox.net ([5.148.176.60])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIAY-0008Ty-3B
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:04:40 +0000
Date: Mon, 27 Feb 2017 05:03:57 -0500
From: AndrewCz <andrewcz@neomailbox.net>
Message-ID: <20170227100356.GA3007@tharch.hub>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: Zyxel NAS540 bricked?
To: barebox@lists.infradead.org

Hello all, hope you are well.

Recently, I followed a guide[1] to reflash my Zyxel NAS540[2] in order
to put Debian on it. I'm pretty sure I bricked it and am just looking
for confirmation.

I seem to be running into a bootloop where it will restart every two
minutes or so. At least that is what seems to be indicated based on the
frequency of the front panel lights lighting up. I reflashed the 'env'
and 'kernel2' sections of the NOR flash, but neither went the right way.
I can dive into the specifics if necessary. However, my concern is that
I was unable to receive any output from the serial connection.

Given that the barebox 'env' may be corrupt as well as the kernel, is it
correct to expect that there would be no serial output? Thanks for your
consideration in this matter.

--Andrew Cz

[1] https://l.unchti.me/2016/02/12/debian-nas540.html
[2] http://zyxel.nas-central.org/wiki/Category:NAS540

-- 
Only an idiot fights a war on two fronts. Only the heir to the throne
of the kingdom of idiots would fight a war on twelve fronts.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
