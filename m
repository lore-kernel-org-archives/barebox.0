Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeHhN-00046a-Ik
 for barebox@lists.infradead.org; Thu, 07 Nov 2013 05:00:06 +0000
Received: by mail-ea0-f182.google.com with SMTP id o10so15209eaj.41
 for <barebox@lists.infradead.org>; Wed, 06 Nov 2013 20:59:39 -0800 (PST)
Received: from x61s.Speedport_W_921V_1_24_000
 (p20030064AA87CB011A3DA2FFFE0D63D0.dip0.t-ipconnect.de.
 [2003:64:aa87:cb01:1a3d:a2ff:fe0d:63d0])
 by mx.google.com with ESMTPSA id z2sm4242025eee.7.2013.11.06.20.59.39
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Wed, 06 Nov 2013 20:59:39 -0800 (PST)
Date: Thu, 7 Nov 2013 06:06:34 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131107050633.GA1925@x61s.Speedport_W_921V_1_24_000>
References: <20131107040603.GA3641@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131107040603.GA3641@greatfirst.com>
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
Subject: Re: how to create a new file under barebox prompt
To: barebox <barebox@lists.infradead.org>

On Thu, Nov 07, 2013 at 12:06:03PM +0800, zzs wrote:
> Barebox hasn't 'touch' command, How can I create new file
> 
type 'edit $FILE' then save it 'ctrl-d'(EOF).

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
