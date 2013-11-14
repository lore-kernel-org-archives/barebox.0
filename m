Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x230.google.com ([2607:f8b0:400e:c02::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgvM0-0005dq-U4
 for barebox@lists.infradead.org; Thu, 14 Nov 2013 11:44:57 +0000
Received: by mail-pd0-f176.google.com with SMTP id r10so1843322pdi.7
 for <barebox@lists.infradead.org>; Thu, 14 Nov 2013 03:44:33 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131112141913.GL24559@pengutronix.de>
References: <1383606064-30494-1-git-send-email-a.heider@gmail.com>
 <20131106094628.GH24559@pengutronix.de>
 <20131106174049.GA83992@localhost>
 <20131112121451.GB77248@localhost>
 <20131112141913.GL24559@pengutronix.de>
Date: Thu, 14 Nov 2013 12:44:33 +0100
Message-ID: <CAHsu+b8Vw8LafW_JSw02EGRev7W59YkrmVqAMJ8a7sFq85UHYg@mail.gmail.com>
From: Andre Heider <a.heider@gmail.com>
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
Subject: Re: [PATCH v2 0/6] BCM2835 / simple framebuffer support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 12, 2013 at 3:19 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Tue, Nov 12, 2013 at 01:14:51PM +0100, Andre Heider wrote:
>> Hi Sascha,
>>
>> On Wed, Nov 06, 2013 at 06:40:49PM +0100, Andre Heider wrote:
>> > And yes, it works if I set fb0.enable=1 and fb0.register_simplefb=1,
>> > both are 0 per default.
>> >
>> > Now I wonder who/where those are supposed to get set? Is that a job for
>> > the runtime environment?
>>
>> if possible I'd like to make the fb work out of the box. Setting these
>> two parameters to default to "1" feels wrong (and I didn't find other
>> drivers to do so). Any suggestions?
>
> Normally the policy is that a framebuffer is not enabled during
> registration. This makes sense because normally the framebuffer doesn't
> contain a useful picture, so users should set a picture and enable the
> framebuffer afterwards to avoid flickering.
>
> In your case the situation is different though. The display hardware is
> already enabled when you enter barebox, right?

Right.

> In this case I suggest
> that you set info->p_enable to true before calling register_framebuffer
> from the bcm2835 driver. This should be the right thing to do since it
> only reflects the hardware status.
>
> Also I think you can set info->register_simplefb to true aswell in the
> bcm2835 driver since on that platform this is probably a sane default.

Ok, easy enough ;)

Thanks,
Andre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
