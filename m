Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22a.google.com ([2a00:1450:400c:c09::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYBe0-0007Jz-Em
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 12:00:46 +0000
Received: by mail-wm0-x22a.google.com with SMTP id g62so218354743wme.1
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2016 04:00:23 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160223080530.GZ3939@pengutronix.de>
References: <CABQt-UmmZmRR9zPscx=8-eQ49eNUS7GQVxjBXs6D0OgiuWfquQ@mail.gmail.com>
 <20160223080530.GZ3939@pengutronix.de>
Date: Tue, 23 Feb 2016 13:00:22 +0100
Message-ID: <CABQt-Um-ENNbt_MbbF4NP42jmufsmgxV6pVvEsTFjw0O=++=ow@mail.gmail.com>
From: Philippe Leduc <ledphilippe@gmail.com>
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
Subject: Re: bootm crash - bad uimage?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

This commit doesn't seem to fix the problem (in fact it was already
applied when I saw the crash).

Note: I am using mkimage to create bootable image of a real-time OS
(PikeOS). There is no initrd or dtc at this step for now: I guess it
is like loading an old Linux kernel without userspace.

I do not want to bother you with a specific use case if this is the
root of the problem.

Best regards,

Philippe LEDUC
ledphilippe@gmail.com


2016-02-23 9:05 GMT+01:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Philippe,
>
> On Mon, Feb 22, 2016 at 04:31:18PM +0100, Philippe Leduc wrote:
>> Hello,
>>
>> Since the commit 0a37e22d638acf1b2c7c6e6ab83b6a3272b0a11c, I can't
>> boot my image anymore.
>> It seems that os_part is a null pointer and simple_strtoul crash on it
>> (in bootm_load_os). I workaround the problem by forcing the value to 0
>> if os_part if null, but I guess that it is a bad solution.
>> Is this a due to a bad usage of the mkimage utility?
>
> Probably not. Is this fixed by this commit?
>
> commit 1a180cd3b6e5c067c68f3e09f7e15e5b18af9761
> Author: Lucas Stach <l.stach@pengutronix.de>
> Date:   Fri Feb 12 17:58:23 2016 +0100
>
>     bootm: parse initrd and oftree into correct struct members
>
>     The code parsing the oftree and initrd file names is clearly wrong,
>     leading to bootm not loading oftree or initrd files any more.
>
>     Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
