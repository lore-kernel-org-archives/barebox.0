Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gae1y-0007yR-S7
 for barebox@lists.infradead.org; Sat, 22 Dec 2018 09:57:16 +0000
Date: Sat, 22 Dec 2018 10:56:56 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181222095656.GA27911@ravnborg.org>
References: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ec676ac6-39e7-8962-7eb5-e73f62938900@rempel-privat.de>
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
Subject: Re: MIPS multiimabe is brocken after "Images: Add image size to
 built images"
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Oleksij

> i can't build MIPS images after this patch:
> 
> commit 3abeee3e45224c73245e32cb614c241cd195f1c4 (bb/master)
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Mon Dec 17 12:09:23 2018 +0100

Can you elaborate a little what goes wrong.
Does the build fail or you cannot boot barebox?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
