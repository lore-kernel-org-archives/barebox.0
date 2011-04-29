Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vx0-f177.google.com ([209.85.220.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QFqx4-00048g-AU
	for barebox@lists.infradead.org; Fri, 29 Apr 2011 16:54:02 +0000
Received: by vxd2 with SMTP id 2so3616460vxd.36
	for <barebox@lists.infradead.org>; Fri, 29 Apr 2011 09:53:57 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <201104291749.59855.pgsellmann@portner-elektronik.at>
References: <201104291749.59855.pgsellmann@portner-elektronik.at>
Date: Fri, 29 Apr 2011 18:53:56 +0200
Message-ID: <BANLkTikLyRxNbyNsVxk5Jm-3rdb0mESmEQ@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [bug] commands/loads.c:31: fatal error: exports.h: No such file
	or directory
To: Peter Gsellmann <pgsellmann@portner-elektronik.at>
Cc: barebox@lists.infradead.org

Hi,

On Fri, Apr 29, 2011 at 5:49 PM, Peter Gsellmann
<pgsellmann@portner-elektronik.at> wrote:
> Trying to compile barebox for the AT91SAM9260EK, found this error.
> Compiler is gcc version 4.4.1 (Sourcery G++ Lite 2010q1-188)
>
> steps to reproduce:
> export ARCH=arm
> export CROSS_COMPILE=arm-none-eabi-
> make
>
>
> Is the 'loads' command ready for inclusion or would
> # CONFIG_CMD_LOADS is not set
> be better?
You enabled in config CONFIG_BROKEN which visible you the loads
command. This code is broken so even not compilable.
Disable Prompt for broken or incomplete code in General settings
and will compile without problems (of course without loads command)
>
>
> Thanks for any advice,
> Peter
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>

regards,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
icq: 290551086
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
