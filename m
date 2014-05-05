Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f47.google.com ([74.125.83.47])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WhLg6-0002Jh-EK
 for barebox@lists.infradead.org; Mon, 05 May 2014 16:23:43 +0000
Received: by mail-ee0-f47.google.com with SMTP id b15so5601751eek.6
 for <barebox@lists.infradead.org>; Mon, 05 May 2014 09:23:18 -0700 (PDT)
Received: from [192.168.120.57] (p578a7230.dip0.t-ipconnect.de.
 [87.138.114.48])
 by mx.google.com with ESMTPSA id 45sm30856668eeh.9.2014.05.05.09.23.16
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Mon, 05 May 2014 09:23:17 -0700 (PDT)
Message-ID: <5367BAF3.50607@kiwigrid.com>
Date: Mon, 05 May 2014 18:23:15 +0200
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: boot command is broken?
To: barebox@lists.infradead.org

Hi,

after update to v2014.05.0 'boot -l' displays only one entry, although
in /env/boot/ exists more files. Can anyone confirm this?

Best regards,
Wjatscheslaw Stoljarski

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
