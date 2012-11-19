Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-113.126.com ([220.181.15.113])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaMiy-0003CV-Q2
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 08:29:02 +0000
Date: Mon, 19 Nov 2012 16:36:22 +0800
From: zzs <zzs213@126.com>
Message-ID: <20121119083622.GB8572@greatfirst.com>
References: <20121119081815.GA8572@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121119081815.GA8572@greatfirst.com>
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
Subject: Re: howto cp to flash
To: barebox <barebox@lists.infradead.org>

I use cp command, the result is same

cp ./zbarebox.bin /dev/nor0.root

md -s /dev/nor0.root
00000000: ffffffff ffffffff ffffffff ffffffff                ................
00000010: ffffffff ffffffff ffffffff ffffffff                ................
00000020: ffffffff ffffffff ffffffff ffffffff                ................

ls /dev/nor0.* -l
crw-------    4849664 /dev/nor0.root
crw-------    3145728 /dev/nor0.kernel
crw-------     131072 /dev/nor0.bareboxenv
crw-------     262144 /dev/nor0.barebox

My flash write OK in u-boot

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
