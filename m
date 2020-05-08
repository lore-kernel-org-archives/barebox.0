Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX70l-0003Bh-FL
 for barebox@lists.infradead.org; Fri, 08 May 2020 17:42:13 +0000
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
 <20200312083555.10793-20-s.hauer@pengutronix.de>
 <20200312223615.GA11963@emlix.com> <20200316080427.GL3335@pengutronix.de>
 <2e7c11ab-a83f-ba67-50f5-9e6b88b7595d@emlix.com>
 <20200422074059.GK1694@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <a7be606e-4d45-5480-5b9b-bdad5b020302@emlix.com>
Date: Fri, 8 May 2020 19:42:06 +0200
MIME-Version: 1.0
In-Reply-To: <20200422074059.GK1694@pengutronix.de>
Content-Language: de-DE
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 19/19] poller: Allow to run pollers inside of pollers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hello Sascha,

Am 22.04.20 um 09:40 schrieb Sascha Hauer:
> Before I merge this series want to have the idle slice issue solved. I
> don't want to risk merging something that we have to completely
> restructure soon.
> Do you have any resources to look into the idle slice?

I didn't have time back then, but I'm looking into it right now.

Best regards,

  Daniel

-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
