Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-da0-f47.google.com ([209.85.210.47])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCb7b-0002r4-V7
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 19:32:32 +0000
Received: by mail-da0-f47.google.com with SMTP id s35so2712767dak.6
 for <barebox@lists.infradead.org>; Mon, 04 Mar 2013 11:32:25 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1362266753.2127.14.camel@antimon>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
 <1362129773-4579-2-git-send-email-dev@lynxeye.de>
 <20130301131742.GF23022@game.jcrosoft.org>
 <1362266753.2127.14.camel@antimon>
Date: Mon, 4 Mar 2013 23:26:20 +0400
Message-ID: <CAA4bVAG9rkedNQmhT2EWMSSNG4Zc1s-6q+OYBe-AmpcuOoHfnA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/7] tegra: move address map to tegra20-silicon.h
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On 3 March 2013 03:25, Lucas Stach <dev@lynxeye.de> wrote:
> Am Freitag, den 01.03.2013, 14:17 +0100 schrieb Jean-Christophe
> PLAGNIOL-VILLARD:
>> On 10:22 Fri 01 Mar     , Lucas Stach wrote:
>> > The address map is specific to the Tegra20 SoC. Move it to a
>> > file with an appropriate name. While at it clarify and fix
>> > the definitions.
>>
>> folloow the kernel
>
> The Tegra kernel is fully device tree enabled and doesn't need any of
> those defines, as the hardware mapping is encoded in the DT. While I'm
> certainly aiming for the same thing in barebox, it's just not the right
> thing to do at this state of development.

Is there any benefit in the renaming of the iomap.h file to tegra20-silicon.h?

I think no. The name iomap.h is used in the linux kernel so it is
natural that just the same file will have the same name it barebox.
It is more comfortable for kernel developer see the kernel header
files in bootloader with the same kernel name.

Anyway the number of kernel Tegra developers is much more than number
of barebox Tegra developers :)))

>> >
>> > Signed-off-by: Lucas Stach <dev@lynxeye.de>
>> > ---
>> >  [...]
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
