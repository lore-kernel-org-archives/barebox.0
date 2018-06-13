Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x241.google.com ([2607:f8b0:4003:c06::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT959-0007tD-RI
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 16:57:17 +0000
Received: by mail-oi0-x241.google.com with SMTP id 14-v6so2997413oie.3
 for <barebox@lists.infradead.org>; Wed, 13 Jun 2018 09:57:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180613085034.3d7ac581@erd980>
References: <20180612142308.4a048a14@erd980>
 <20180612124738.pi66gx2vlgvoljmo@pengutronix.de>
 <20180612154606.4b41d063@erd980>
 <20180613064230.4ijryd6pamvz5pjk@pengutronix.de>
 <20180613085034.3d7ac581@erd980>
From: Fabio Estevam <festevam@gmail.com>
Date: Wed, 13 Jun 2018 13:57:03 -0300
Message-ID: <CAOMZO5Bp=j4GH+1cco8-iC+4p04Ommb+FjWFeE5_1vRUnHEwnw@mail.gmail.com>
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
Subject: Re: Device-tree node renames break barebox/kernel compatibility...
To: David Jander <david@protonic.nl>
Cc: Fabio Estevam <fabio.estevam@nxp.com>, Barebox List <barebox@lists.infradead.org>, Marco Franchi <marco.franchi@nxp.com>, Shawn Guo <shawnguo@kernel.org>

Hi David,

On Wed, Jun 13, 2018 at 3:50 AM, David Jander <david@protonic.nl> wrote:
o, it's not just you. Me and other people are with you.
>>
>> When talking about device tree stability we usually only talk about the
>> bindings, not about the structure of the trees. The problem here was
>> probably that people weren't aware that this change breaks stuff.
>
> That's exactly what I also thought. That's in part also why I sent this e-mail
> (the committers are in CC and hopefully listening ;-)
> Sorry for the spam in that regard.

I was not aware that removing the leading zeroes would cause any problem, sorry.

Maybe you could also report this problem to Rob Herring and the
devicetree mainling list.

Thanks

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
