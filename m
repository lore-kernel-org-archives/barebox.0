Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZnAke-0005Ty-Ng
 for barebox@lists.infradead.org; Fri, 16 Oct 2015 19:33:17 +0000
Received: by wicll6 with SMTP id ll6so25469554wic.1
 for <barebox@lists.infradead.org>; Fri, 16 Oct 2015 12:32:54 -0700 (PDT)
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <87d1wk74nt.fsf@belgarion.home> <561BFECA.1010105@gmail.com>
 <87k2qr6go0.fsf@belgarion.home> <561C111E.7010106@gmail.com>
 <874mhv5cxm.fsf@belgarion.home> <561CD48A.9000301@gmail.com>
 <20151013102725.GH7858@pengutronix.de> <87wpur3ves.fsf@belgarion.home>
 <562017CD.4050105@gmail.com> <877fmm3bea.fsf@belgarion.home>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Message-ID: <562150E2.2050709@gmail.com>
Date: Fri, 16 Oct 2015 21:32:51 +0200
In-Reply-To: <877fmm3bea.fsf@belgarion.home>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 00/17] Armada 370/XP NAND driver
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 16.10.2015 20:40, Robert Jarzmik wrote:
> It's this part with match which is NULL in my case:
> 	const struct mrvl_nand_variant *variant = match->data;

Ok. I now moved the of_match and variant assignment below the
OF protection. New version at the same branch.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
