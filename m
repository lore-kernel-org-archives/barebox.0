Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XUtVX-0003Ct-IZ
 for barebox@lists.infradead.org; Fri, 19 Sep 2014 08:25:36 +0000
Received: by mail-we0-f172.google.com with SMTP id u56so1681920wes.31
 for <barebox@lists.infradead.org>; Fri, 19 Sep 2014 01:25:12 -0700 (PDT)
Message-ID: <541BE864.4030609@gmail.com>
Date: Fri, 19 Sep 2014 10:25:08 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140919054725.GD4992@pengutronix.de> <541BD0B9.9090101@gmail.com>
 <20140919075542.GF4992@pengutronix.de>
In-Reply-To: <20140919075542.GF4992@pengutronix.de>
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
Subject: Re: [PATCH v2 0/6] mvebu multi SoC support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09/19/2014 09:55 AM, Sascha Hauer wrote:
> On Fri, Sep 19, 2014 at 08:44:09AM +0200, Sebastian Hesselbarth wrote:
>> On 09/19/2014 07:47 AM, Sascha Hauer wrote:
>>> On Wed, Sep 17, 2014 at 10:22:38PM +0200, Sebastian Hesselbarth wrote:
>>>> This is v2 of the Multi-SoC series for MVEBU. It has been tested
>>>> on Kirkwood (Guruplug), Dove (CuBox), and Armada 370 (Mirabox)
>>>> with the very same non-EABI binary. It should also work on Armada
>>>> XP but I cannot test right now.
>>>
>>> Do you want to give it a test on Armada XP before I apply this series or
>>> are you fine with this without testing it on Armada XP?
>>
>> I just tested it on Lenovo ix4-300d with Armada XP MV78230-A0, so feel
>> free to pick it up.
>
> Cool, just did that. Are you fine with removing the board specific
> configs now that we have a mvebu_defconfig?

Yes, please. As you already pointed out, the board specific configs are
horribly out-dated and should be nuked.

>> If I find some time, I'll polish ix4-300d patches and send them, too.
>
> Nice.

It may also include deferred probing support as the ix4-300d has a gpio
attached gpio-expander (aka 74HC138) with LEDs. And as you may guess,
requesting GPIOs from that expander which needs GPIOs itself does not
quite work yet.

I have it running, the deferred probing is simple, but I'll have to
review the whole set first (and sync with Linux dts of ix4).

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
