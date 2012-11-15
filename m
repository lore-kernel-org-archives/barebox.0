Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TYtSN-0000Ux-9h
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 07:01:48 +0000
Date: Thu, 15 Nov 2012 15:07:55 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121115070755.GC31296@greatfirst.com>
References: <20121115031146.GA31296@greatfirst.com>
 <CAA4bVAFqCPkRGrz1oENQ3s9k99o=wPVq1RWSdiRJjeY1Mgkt3g@mail.gmail.com>
 <CAA4bVAEhhLxXfzNZ_mBP_=W-TNOHOkEnwF=vgBMBy16ezd2_NA@mail.gmail.com>
 <20121115063011.GB31296@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121115063011.GB31296@greatfirst.com>
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
Subject: Re: how to download a file to specified mem location using tftp
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

> So how to mount tftp to /mnt/tftp
>
Greped barebox code, Now I SEE

mkdir /mnt/tftp -p && mount -t tftp $eth0.serverip /mnt/tftP

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
