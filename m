Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x242.google.com ([2607:f8b0:400c:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCiwr-0007Uv-GN
 for barebox@lists.infradead.org; Tue, 14 Jun 2016 07:39:46 +0000
Received: by mail-vk0-x242.google.com with SMTP id a126so24344793vkb.1
 for <barebox@lists.infradead.org>; Tue, 14 Jun 2016 00:39:24 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160614063919.GP31666@pengutronix.de>
References: <20160504074331.GM19714@pengutronix.de>
 <1465838955-24515-1-git-send-email-guille.rodriguez@gmail.com>
 <20160614063919.GP31666@pengutronix.de>
From: Guillermo Rodriguez Garcia <guille.rodriguez@gmail.com>
Date: Tue, 14 Jun 2016 09:39:23 +0200
Message-ID: <CABDcavasLdCoH5gxWMrysjyVnGd5K_F+2=gi6CS1Xmaegkib8g@mail.gmail.com>
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
Subject: Re: [PATCH] Fix genphy_restart_aneg() for Micrel's ksz9031.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Philipp Zabel <pza@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

Hi Sascha,

2016-06-14 8:39 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Guillermo,
>
> On Mon, Jun 13, 2016 at 07:29:15PM +0200, Guillermo Rodriguez Garcia wrote:
>> From: grodriguez <guille.rodriguez@gmail.com>
>>
>> Commit da89ee8f2e04 ("Center FLP timing at 16ms") breaks
>> genphy_restart_aneg() for Micrel's ksz9031. According to the
>> datasheet, the ksz9031 requires a wait of 1ms after clearing
>> the PDOWN bit and before read/write access to any PHY registers.
>> ---
>>  drivers/net/phy/phy.c |    9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> I must say that I am not overly happy with this patch as it leaks in phy
> specific stuff into a somewhat generic function. Anyway, I see the need
> for this patch and so I applied it.

Yes, I understand perfectly and I feel the same.
The alternative was to create a custom genphy_restart_aneg for micrel
PHYs only add the delay there, however I am not sure it is worth the
trouble just for a 1ms delay which will be virtually unnoticeable
anyway.

Also I am not completely sure that this only applies to Micrel. See
this for example in the SMSC911x driver from the Linux kernel:
http://lxr.free-electrons.com/source/drivers/net/ethernet/smsc/smsc911x.c#L1364

Anyway if you would prefer this to be moved to micrel.c I would be
happy to prepare a patch for that; just let me know.

Thank you,

Guillermo Rodriguez Garcia
guille.rodriguez@gmail.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
