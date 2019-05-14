Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr820089.outbound.protection.outlook.com
 ([40.107.82.89] helo=NAM01-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQMZZ-0005D0-JO
 for barebox@lists.infradead.org; Tue, 14 May 2019 01:49:43 +0000
From: Cory Tusar <Cory.Tusar@zii.aero>
Date: Tue, 14 May 2019 01:49:32 +0000
Message-ID: <20190514014927.GD31272@zii.aero>
References: <20190513235908.18693-1-andrew.smirnov@gmail.com>
In-Reply-To: <20190513235908.18693-1-andrew.smirnov@gmail.com>
Content-Language: en-US
Content-ID: <2BCDA008C7DD99449A90D9DE822D1F87@namprd12.prod.outlook.com>
MIME-Version: 1.0
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
Subject: Re: [PATCH] serdev: Do not call .receive_buf() callback recursively
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On Mon, May 13, 2019 at 04:59:08PM -0700, Andrey Smirnov wrote:
> Code implementing .receive_buf() callback can potentially call
> serdev_device_write(), which will call serdev_device_poller(). We need
> to make sure that such a call is a no-op in order to prevent
> corrupting shared data buffer as well as breaking .receive_buf
> callback that most likely does not expect that to happen.
>
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Tested-by: Cory Tusar <cory.tusar@zii.aero>


--
Cory Tusar
Senior Software Engineer
Zodiac Inflight Innovations
2929 E Imperial Hwy, Suite 170
Brea, CA 92821
(714) 203-0519

www.safran-aerosystems.com

________________________________

This email and any files transmitted with it are confidential & proprietary to Zodiac Inflight Innovations. This information is intended solely for the use of the individual or entity to which it is addressed. Access or transmittal of the information contained in this e-mail, in full or in part, to any other organization or persons is not authorized.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
