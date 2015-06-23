Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from teledigit.eu ([195.56.148.37])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z7OSN-0006ow-Uh
 for barebox@lists.infradead.org; Tue, 23 Jun 2015 13:41:45 +0000
Received: from [192.168.42.238] ([176.63.203.49]:59306)
 by teledigit.eu with [XMail 1.27 ESMTP Server]
 id <S6B54F> for <barebox@lists.infradead.org> from <kgy@teledigit.eu>;
 Tue, 23 Jun 2015 15:41:19 +0200
Message-ID: <558961C0.2090005@teledigit.eu>
Date: Tue, 23 Jun 2015 15:40:16 +0200
From: =?windows-1252?Q?Gy=F6rgy_K=F6vesdi?= <kgy@teledigit.eu>
MIME-Version: 1.0
References: <5588272F.9010803@eutecus.com>
 <1435047176.25607.3.camel@pengutronix.de> <55894326.5000107@teledigit.eu>
 <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
In-Reply-To: <CAOpc7mH---D=ddMwuRdMyqWT1zHe-YZbQrZsMTVWvvQda4YKUQ@mail.gmail.com>
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

Hi,

> You better ask in some Yocto-specific mailing list, this isn't really
> the problem of Barebox anymore. :-)   The soft-float option might come
> from one of your inherited configuration files.
I am completely confused now, because Yocto guys said that the problem 
is in Barebox... :-)
At least i can compile thousands of recipes on Yocto, currently Barebox 
is the only one having this issue. I spent a lot of time debugging this 
problem in the recent days and i see the float abi is set to hard in the 
bitbake environment, and the soft float is not even supported by gcc 
(that is the problem). Currently i blame the kernel build system used by 
Barebox about setting soft float abi.

> Soft-Float is definitely not optimal for the i.MX6, because this one
> has FPU commands.
I agree.

Regards
Gyorgy Kovesdi


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
