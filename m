Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-111.126.com ([220.181.15.111])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TfnZZ-0005lJ-MG
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 08:09:49 +0000
Date: Tue, 4 Dec 2012 16:09:32 +0800
From: =?utf-8?B?5byg5b+g5bGx?= <zzs213@126.com>
Message-ID: <20121204080932.GD20812@greatfirst.com>
References: <20121130110336.GB7099@greatfirst.com>
 <20121203095534.GL10369@pengutronix.de>
 <20121204014242.GB20812@greatfirst.com>
 <20121204074431.GV10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121204074431.GV10369@pengutronix.de>
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
Subject: Re: Howto known uncompressed length when uncompress_fd_to_buf
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

> Why don't you uncompress to a regular file (i.e. /tmp/foo) rather than
> to the device file?
>
My fireware will be a huge file: about 12M bytes. I don't known How much
a regular file's size.

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
