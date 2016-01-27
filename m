Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x241.google.com ([2607:f8b0:4001:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOFXt-0005Sw-P5
 for barebox@lists.infradead.org; Wed, 27 Jan 2016 02:09:22 +0000
Received: by mail-ig0-x241.google.com with SMTP id ik10so235299igb.1
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2016 18:09:01 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160126215555.GD13058@pengutronix.de>
References: <1453787758-12688-1-git-send-email-andrew.smirnov@gmail.com>
 <1453787758-12688-7-git-send-email-andrew.smirnov@gmail.com>
 <20160126215555.GD13058@pengutronix.de>
Date: Tue, 26 Jan 2016 18:09:00 -0800
Message-ID: <CAHQ1cqEemyC0CfVQeshBuJtA1p0mCQaPB33noov4N7FSk5F+Ng@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 7/7] commands: Add mdio_read and mdio_write
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Jan 26, 2016 at 1:55 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Jan 25, 2016 at 09:55:58PM -0800, Andrey Smirnov wrote:
>> Add commands for low-level access to MDIO bus.
>
> Do we really need this? We can already read/write phy registers using
> /dev/phyx which imo is quite convenient since it can be accessed with
> regular md/mw commands.
>
> This of course is currently limited to the phys that are actually
> registered, you can't just bang on MDIO addresses on which no phys are
> registered. Maybe we could register all phys on a MDIO bus instead of
> only the used ones?

Just to explain the purpose of this patch -- there are number of
reasons we might want to be able to access "unregistered" PHYs:

- Not all MDIO attached devices would have PHYSID1,2 registers
available which might cause mdiobus_scan() to not detect those PHYs

- MDIO bus troubleshooting

As for registering all PHYs on a bus, correct me if I am wrong but
that would result in 32*N number of entries in /dev, where N is number
of MDIO buses in the system. The device I am working with right now
has 3 MDIO buses which would mean that I'd end up with 96 additional
entries in /dev, which might be a little bit overwhelming from UI
point of view. The other UI problem with that approach is that
/dev/phy's are numbered linearly so in order to figure out how to
access device on bus N at address M, user would have to perform N*32 +
M in their head.

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
