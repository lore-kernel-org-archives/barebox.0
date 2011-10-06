Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RBsoi-00011h-0n
	for barebox@lists.infradead.org; Thu, 06 Oct 2011 18:37:12 +0000
Received: by wwp14 with SMTP id 14so3189720wwp.18
	for <barebox@lists.infradead.org>; Thu, 06 Oct 2011 11:37:07 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20111006110410.GU31404@pengutronix.de>
References: <1317305076-3334-1-git-send-email-antonynpavlov@gmail.com>
	<1317305076-3334-5-git-send-email-antonynpavlov@gmail.com>
	<20111006110410.GU31404@pengutronix.de>
Date: Thu, 6 Oct 2011 22:32:26 +0400
Message-ID: <CAA4bVAFeJq-CkJ8tMOXvMfH8NwgsGPV_QCtLfuRU-WRAsZdfRQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC PATCH 4/6] arm: cpuinfo: Cortex-A9 dirty hack
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 6 October 2011 15:04, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Thu, Sep 29, 2011 at 06:04:34PM +0400, Antony Pavlov wrote:
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> ---
>> =A0arch/arm/cpu/cpuinfo.c | =A0 10 +++++++++-
>> =A01 files changed, 9 insertions(+), 1 deletions(-)
>>
>> diff --git a/arch/arm/cpu/cpuinfo.c b/arch/arm/cpu/cpuinfo.c
>> index e19b8de..25d2c3f 100644
>> --- a/arch/arm/cpu/cpuinfo.c
>> +++ b/arch/arm/cpu/cpuinfo.c
>> @@ -101,7 +101,15 @@ static int do_cpuinfo(struct command *cmdtp, int ar=
gc, char *argv[])
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (arch > 0 && arch < 8)
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 architecture=
 =3D post_arm7_archs[arch - 1];
>> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 else
>> - =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 architecture =
=3D "Unknown";
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 /*
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* see Corte=
x-A9 Technical Reference Manual:
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0* =A0Main I=
D Register value fixed to 0x411fc090
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*/
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 if (mainid =3D=
=3D 0x411fc090) {
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 architecture =3D "Cortex-A9";
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 } else {
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 architecture =3D "Unknown";
>> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
>
> For Cortex-A8 it seems to be 0x412fc085. Aybe you can have a look at
> arch/arm/kernel/setup.c in the kernel to see how it's done there. Would
> be good to catch the Cortex-A8 aswell with this patch.
>

Sorry, but now I think that my patch is completely wrong.
The "Cortex A9" in __CPU core name__, not an __architecture name__.
Really, "Cortex A9" has the "ARM v7" architecture.

I will fix my patch using linux/arch/arm/kernel/setup.c as a model.

To show cpu name we will need something like struct proc_info_list in linux:

struct cpu_ids {
    u32 cpu_id;
    u32 cpu_id_mask;
    const char *cpu_name;
} cpu_ids[] =3D {
 { 0x410fc050, 0xff0ffff0, "Cortex A5", },
 { 0x410fc090, 0xff0ffff0, "Cortex A9", },
 { 0x410fc0f0, 0xff0ffff0, "Cortex A15", },
  ...
}

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
