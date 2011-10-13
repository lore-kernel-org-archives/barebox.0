Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1REHMq-0007Fb-Cx
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 09:14:21 +0000
Received: by gyd10 with SMTP id 10so1886565gyd.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 02:14:18 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
References: <CAGiJk9ePXFCwosqXUtU9yzGPmmZ5O6R_9gFtJXnJ9=DUnCpOxg@mail.gmail.com>
Date: Thu, 13 Oct 2011 11:14:17 +0200
Message-ID: <CAJeSw6BJqdBON18UDRsBJgPov5iqXKmYRROnEyoH6SkNhOJg3w@mail.gmail.com>
From: Fabian van der Werf <fvanderwerf@gmail.com>
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
Subject: Re: Booting Pandaboard from SD card
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
Cc: barebox@lists.infradead.org

On Thu, Oct 13, 2011 at 10:49 AM, Samuel Stirtzel
<s.stirtzel@googlemail.com> wrote:
>
> Starting kernel ...
>
> commandline: <NULL>
> arch_number: 2791
> Uncompressing Linux... done, booting the kernel.
>
> -
> The screen just stays blank after the last message.
> This looks to me like it is (obviously) caused by an incorrect
> environment loaded.
>
>
> Help would be appreciated.

Hi

I am also trying to get things up and running using barebox. I am at
about the same stage where you are. Though I am loading the kernel
over TFTP instead from SD. Like you, I get "Uncompressing Linux...
done, booting the kernel" and then nothing.

Note that this last line is not printed by barebox but by the kernel.
There is a separate=A0kernel build option to enable a console on the
omap serial port. Then you still need to add console=3DttyOx,115200n8 to
your boot arguments. I think it needs to be ttyO2, though I am not
sure. I haven't had the time yet to try these options (it's just for a
hobby project).


>
> [1] http://www.omappedia.com/wiki/Minimal-FS_SD_flashing (using 2
> partitions, one for boot files and the other for the rootfs)
>
> --
> Regards
> Samuel
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebo


Regards,

Fabian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
