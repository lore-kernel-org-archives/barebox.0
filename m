Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f51.google.com ([209.85.214.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdLeZ-00068r-Up
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 15:01:20 +0000
Received: by mail-bk0-f51.google.com with SMTP id my12so1077520bkb.24
 for <barebox@lists.infradead.org>; Mon, 04 Nov 2013 07:00:55 -0800 (PST)
Message-ID: <5277B6A1.3010106@kiwigrid.com>
Date: Mon, 04 Nov 2013 16:00:49 +0100
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
References: <52778B89.3000208@kiwigrid.com> <20131104134847.6d9a5e8c@e6520eb>
In-Reply-To: <20131104134847.6d9a5e8c@e6520eb>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox on i.MX53 in serial downloader boot mode
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 11/04/2013 01:48 PM, Eric B=E9nard wrote:
> Hi,
>> has anyone tried to start barebox on i.MX53 in 11 boot mode (serial
>> downloader)? I've tried on Freescale Loco board with pmic da9053, but
>> without success. In 00 boot mode (internal boot) works perfectly. U-Boot
>> works in both modes. DCD in u-boot and in barebox is the same. Even I
>> can turn on LEDs with DCD in 11 boot mode on Loco.
>>
> works fine here, what are you using to download barebox ?
I'm using imx-usb-loader. But I've tried MfgTool from Freescale too with =

the same result.

Wjatscheslaw

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
