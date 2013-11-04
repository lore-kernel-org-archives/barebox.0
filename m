Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f42.google.com ([209.85.214.42])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdIso-0000vm-LW
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 12:03:51 +0000
Received: by mail-bk0-f42.google.com with SMTP id w16so507614bkz.29
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 04:03:26 -0800 (PST)
Received: from [192.168.120.57] ([193.158.112.210])
 by mx.google.com with ESMTPSA id zl3sm14688035bkb.4.2013.11.04.03.57.01
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 04 Nov 2013 03:57:03 -0800 (PST)
Message-ID: <52778B89.3000208@kiwigrid.com>
Date: Mon, 04 Nov 2013 12:56:57 +0100
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
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
Subject: barebox on i.MX53 in serial downloader boot mode
To: barebox@lists.infradead.org

Hi,

has anyone tried to start barebox on i.MX53 in 11 boot mode (serial 
downloader)? I've tried on Freescale Loco board with pmic da9053, but 
without success. In 00 boot mode (internal boot) works perfectly. U-Boot 
works in both modes. DCD in u-boot and in barebox is the same. Even I 
can turn on LEDs with DCD in 11 boot mode on Loco.

Regards,
Wjatscheslaw Stoljarski

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
