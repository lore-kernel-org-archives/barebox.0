Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x232.google.com ([2a00:1450:4008:c01::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMuyT-0005Sw-Vf
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 07:50:14 +0000
Received: by mail-bk0-f50.google.com with SMTP id w10so1144120bkz.37
 for <barebox@lists.infradead.org>; Mon, 10 Mar 2014 00:49:51 -0700 (PDT)
Date: Mon, 10 Mar 2014 09:02:15 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140310080213.GA32061@x61s.Speedport_W_921V_1_24_000>
References: <5319AA25.5050803@sam-solutions.net>
 <20140310072003.GH17250@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140310072003.GH17250@pengutronix.de>
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
Subject: Re: [PATCH 1/5] mtd: Update internal API to support 64-bit device size
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Grigory Milev <G.Milev@sam-solutions.com>, barebox@lists.infradead.org, Dmitry Lavnikevich <D.Lavnikevich@sam-solutions.com>, Dmitry Lavnikevich <d.lavnikevich@sam-solutions.net>

Hi Sascha,

we talked some time ago about >= 4GB mtd support. This patch series add
only a size for uint64_t. But then we also need to change

uint32_t master_offset;

in mtd_info to:

uint64_t master_offset;

otherwise we can't create mtd partitions with a uint64_t offset. Or I am
wrong with that? I mean... maybe they don't want to make a uint64_t
offset but we should do it right at first time.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
