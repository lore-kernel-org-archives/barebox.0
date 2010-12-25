Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PWNxU-0007bI-Nc
	for barebox@lists.infradead.org; Sat, 25 Dec 2010 06:50:29 +0000
Date: Sat, 25 Dec 2010 07:38:39 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20101225063839.GM19266@game.jcrosoft.org>
References: <AANLkTik+7KJrf3H6ZW3i9pA115p2Gn=k=CXYHg5YJwRY@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTik+7KJrf3H6ZW3i9pA115p2Gn=k=CXYHg5YJwRY@mail.gmail.com>
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
Subject: Re: [PATCH] Add a board specific fancy banner
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On 22:42 Thu 23 Dec     , Franck JULLIEN wrote:
>    Hello,
>    This is the first time I'm using git and submit a patch so if I made a
>    mistake be cool :)
>    This is a small patch allowing the user to define a fancy banner for
>    barebox. I don't know
>    if you'll use it but it's kind of an experience for me.
>    I have ported barebox to the altera nios2 processor. I think I'll submit
>    the corresponding patch
>    on january. However, I'll need some advices to generate such a big (or lot
>    of small) patch.
It will be better to do it via Kconfig and avoid the ifdef

for the nios2 it will be better to spit it in small patch than a big one

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
