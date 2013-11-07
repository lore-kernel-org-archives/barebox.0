Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22e.google.com ([2a00:1450:4013:c00::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeHm2-0004EQ-Gv
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 05:04:55 +0000
Received: by mail-ee0-f46.google.com with SMTP id b57so15352eek.33
 for <barebox@lists.infradead.org>; Wed, 06 Nov 2013 21:04:30 -0800 (PST)
Received: from x61s.Speedport_W_921V_1_24_000
 (p20030064AA87CB011A3DA2FFFE0D63D0.dip0.t-ipconnect.de.
 [2003:64:aa87:cb01:1a3d:a2ff:fe0d:63d0])
 by mx.google.com with ESMTPSA id z2sm4285208eee.7.2013.11.06.21.04.29
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Wed, 06 Nov 2013 21:04:29 -0800 (PST)
Date: Thu, 7 Nov 2013 06:11:28 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131107051127.GB1925@x61s.Speedport_W_921V_1_24_000>
References: <20131107032251.GA1232@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131107032251.GA1232@greatfirst.com>
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
Subject: Re: how to append something to a text file
To: barebox <barebox@lists.infradead.org>

On Thu, Nov 07, 2013 at 11:22:51AM +0800, zzs wrote:
> I wan't to append a command string to /env/boot.
> 
> The command string input from barebox user.
> 
> How to do it
>

See barebox src dir:

cat commands/echo.c | grep append

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
