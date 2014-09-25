Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XX46m-000764-My
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 08:09:01 +0000
Message-ID: <1411632866.2207.2.camel@tellur.intern.lynxeye.de>
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 10:14:26 +0200
In-Reply-To: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
References: <2F9C706F-8EBC-453B-8BA1-116680C7926A@kamama.com>
Mime-Version: 1.0
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
Subject: Re: nvidia jetson tk1 help
To: Ryan Du Bois <rdub@kamama.com>
Cc: barebox@lists.infradead.org

Hi Ryan,

Am Mittwoch, den 24.09.2014, 12:23 -0700 schrieb Ryan Du Bois:
> Hey There,
> 
> I'm having trouble getting barebox to boot on an Nvidia Jetson TK1.  I'm using the tegra-v7_defconfig, and trying to load it to the board via the tegrarcm tool.
> 
> Has anyone done this before who might have a recipe that works?
> 

Please just "make docs". In there you'll find a chapter on how to
bootstrap a Tegra board. The description is for the Beaver board, but
things work the same way on Jetson. If you have any other question, feel
free to ask.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
