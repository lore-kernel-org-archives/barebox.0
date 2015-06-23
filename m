Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from teledigit.eu ([195.56.148.37])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7PZq-0003As-VN
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 14:53:32 +0000
Received: from [192.168.42.238] ([176.63.203.49]:59894)
 by teledigit.eu with [XMail 1.27 ESMTP Server]
 id <S6B568> for <barebox@lists.infradead.org> from <kgy@teledigit.eu>;
 Tue, 23 Jun 2015 16:53:05 +0200
Message-ID: <55897294.10908@teledigit.eu>
Date: Tue, 23 Jun 2015 16:52:04 +0200
From: =?windows-1252?Q?Gy=F6rgy_K=F6vesdi?= <kgy@teledigit.eu>
MIME-Version: 1.0
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de> <55894326.5000107@teledigit.eu>
 <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
 <558961C0.2090005@teledigit.eu>
 <CAOpc7mF1SnaT0==JpBTPvJ=b_MiwADfWNLAJ=moKd61ietku1w@mail.gmail.com>
In-Reply-To: <CAOpc7mF1SnaT0==JpBTPvJ=b_MiwADfWNLAJ=moKd61ietku1w@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Compiling barebox for newest Yocto/meta-freescale
To: barebox@lists.infradead.org

Hi all,

On 2015-06-23 16:07, Holger Schurig wrote:
> Look at barebox/arch/arm/Makefile. Around line 47 you see
> "-msoft-float" specified to both CPPFLAGS and AFLAGS. So specifying
> "CC=-msoft-hard" would bites with this.
Many thanx, this was the problem!
I am removed the "-msoft-float" and everything works now.

I just suggest to remove it at all because such settings are belong to 
the build environment. If someone needs such, it can be set by parameters.
Is it acceptable in general?
Shall i send a patch, or someone does it?

Regards
Gyorgy Kovesdi


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
