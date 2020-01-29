Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwqeo-0004wl-Qz
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 16:57:40 +0000
Received: by mail-lj1-x22d.google.com with SMTP id w1so105681ljh.5
 for <barebox@lists.infradead.org>; Wed, 29 Jan 2020 08:57:38 -0800 (PST)
MIME-Version: 1.0
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
 <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
 <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
In-Reply-To: <CAEKVsgYu15u7d6ptaU7aZGy6OXOhN7743aLdGOz_3fZOPK2JpQ@mail.gmail.com>
From: Cameron Ferguson <cameron.bare86@gmail.com>
Date: Wed, 29 Jan 2020 16:57:25 +0000
Message-ID: <CAEKVsgbzOKhD4gVkHNUf2RanXO40MD8hFVkFZh6=gE_CU38G9w@mail.gmail.com>
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
Subject: Re: Small tweak to get ACPI watchdog working (iTCO)
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org

On Wed, Jan 29, 2020 at 4:07 PM Cameron Ferguson
<cameron.bare86@gmail.com> wrote:

> I'm still tinkering about with this. Still no joy.

I've been toying around with this for so long that I'm really
beginning to think that I'm missing an initial call to initialise the
entire ACPI system.

Anyone got any ideas?

Cameron

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
